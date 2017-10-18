module IntlPhoneInput.Action
    exposing
        ( Action
        , andThen
        , appendKeyword
        , autocloseCountryDropdown
        , closeCountryDropdown
        , delay
        , deleteKeyword
        , doNothing
        , done
        , focus
        , focusInput
        , highlightCountry
        , navigateCountry
        , openCountryDropdown
        , removeHighlightedCountry
        , selectCountry
        , selectHighlightedCountry
        , toggleCountryDropdown
        , updateKeyword
        , updatePhoneNumber
        )

import Dict
import Dom
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Filter as Filter
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), FocusEvent, State(State))
import IntlPhoneInput.KeyCode as KeyCode exposing (ArrowKey(..), KeyCode(..))
import IntlPhoneInput.List as List
import IntlPhoneInput.Type as Type exposing (PhoneNumber)
import Process
import Set
import String
import Task


type Action msg
    = Action (Config msg) State PhoneNumber (Cmd msg)


delay : Float -> (Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg) -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
delay ms action config state phoneNumber cmd =
    let
        delayedCmd =
            Process.sleep ms
                |> Task.attempt (\_ -> action config state phoneNumber cmd |> done)
    in
    Action config state phoneNumber (Cmd.batch [ cmd, delayedCmd ])


doNothing : Config msg -> State -> PhoneNumber -> msg
doNothing config state phoneNumber =
    config.onChange state phoneNumber Cmd.none


done : Action msg -> msg
done (Action config state phoneNumber cmd) =
    config.onChange state phoneNumber cmd


andThen : (Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg) -> Action msg -> Action msg
andThen f (Action config state phoneNumber cmd) =
    f config state phoneNumber cmd


updatePhoneNumber : String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
updatePhoneNumber newPhoneNumber config (State state) phoneNumber cmd =
    Action config (State state) { phoneNumber | phoneNumber = newPhoneNumber } cmd


selectCountry : String -> String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
selectCountry eventName isoCode config (State state) phoneNumber cmd =
    Action config
        (State { state | action = eventName ++ ":selectCountry", countryPickerState = CountryPickerClosed })
        { phoneNumber | isoCode = isoCode }
        cmd


toggleCountryDropdown : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
toggleCountryDropdown config (State state) phoneNumber cmd =
    case state.countryPickerState of
        CountryPickerOpened ->
            Action
                config
                (State { state | countryPickerState = CountryPickerClosed, action = "toggleCountryDropdown" })
                phoneNumber
                cmd

        CountryPickerClosed ->
            openCountryDropdown config (State state) phoneNumber cmd


closeCountryDropdown : String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
closeCountryDropdown eventName config (State state) phoneNumber cmd =
    Action
        config
        (State { state | countryPickerState = CountryPickerClosed, action = eventName ++ ":closeCountryDropdown" })
        phoneNumber
        cmd



-- |> andThen focusInput


openCountryDropdown : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
openCountryDropdown config (State state) phoneNumber cmd =
    Action
        config
        (State { state | countryPickerState = CountryPickerOpened })
        phoneNumber
        cmd
        |> andThen (highlightCountry phoneNumber.isoCode)
        |> andThen clearKeyword
        |> andThen filterCountries


clearKeyword : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
clearKeyword config (State state) phoneNumber cmd =
    Action
        config
        (State { state | keyword = "" })
        phoneNumber
        cmd


filterCountries : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
filterCountries config (State state) phoneNumber cmd =
    let
        filteredCountries =
            config.countries
                |> Dict.toList
                |> Filter.filterList state.keyword
                |> List.map Tuple.first
                |> Set.fromList

        firstCountry =
            filteredCountries
                |> Config.toCountryDataList config
                |> config.countriesSorter
                |> List.head
                |> Maybe.map Tuple.first

        highlightedCountry =
            case state.highlightedCountryByIsoCode of
                Just isoCode ->
                    if Set.member isoCode filteredCountries then
                        state.highlightedCountryByIsoCode
                    else
                        firstCountry

                Nothing ->
                    firstCountry
    in
    Action
        config
        (State
            { state
                | filteredCountries = filteredCountries
                , highlightedCountryByIsoCode = highlightedCountry
            }
        )
        phoneNumber
        cmd
        |> andThen (focus highlightedCountry)


highlightCountry : String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
highlightCountry isoCode config (State state) phoneNumber cmd =
    Action config
        (State { state | highlightedCountryByIsoCode = Just <| String.toUpper isoCode })
        phoneNumber
        cmd


removeHighlightedCountry : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
removeHighlightedCountry config (State state) phoneNumber cmd =
    Action
        config
        (State { state | highlightedCountryByIsoCode = Nothing })
        phoneNumber
        cmd


selectHighlightedCountry : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
selectHighlightedCountry config (State state) phoneNumber cmd =
    let
        doNothing =
            Action config (State state) phoneNumber cmd
    in
    case state.highlightedCountryByIsoCode of
        Just isoCode ->
            selectCountry "selectHighlightedCountry" isoCode config (State state) phoneNumber cmd
                |> andThen (closeCountryDropdown "selectHighlightedCountry")

        Nothing ->
            doNothing


appendKeyword : KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
appendKeyword keyCode config (State state) phoneNumber cmd =
    let
        doNothing =
            Action config (State state) phoneNumber cmd
    in
    case keyCode of
        Alphabet char ->
            Action
                config
                (State { state | keyword = state.keyword ++ (char |> String.fromChar) })
                phoneNumber
                cmd
                |> andThen filterCountries

        _ ->
            doNothing


deleteKeyword : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
deleteKeyword config (State state) phoneNumber cmd =
    Action
        config
        (State { state | keyword = String.dropRight 1 state.keyword })
        phoneNumber
        cmd
        |> andThen filterCountries


highlightNextCountry : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
highlightNextCountry config (State state) phoneNumber cmd =
    let
        nextIsoCode =
            nextCountry config (State state)

        updatedState =
            State { state | highlightedCountryByIsoCode = nextIsoCode }
    in
    Action
        config
        updatedState
        phoneNumber
        cmd
        |> andThen (focus nextIsoCode)


nextCountry : Config msg -> State -> Maybe String
nextCountry config (State state) =
    case state.highlightedCountryByIsoCode of
        Just currentIsoCode ->
            state.filteredCountries
                |> Config.toCountryDataList config
                |> List.map Tuple.first
                |> List.next currentIsoCode
                |> Just

        Nothing ->
            Nothing


highlightPrevCountry : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
highlightPrevCountry config (State state) phoneNumber cmd =
    let
        prevIsoCode =
            prevCountry config (State state)

        updatedState =
            State { state | highlightedCountryByIsoCode = prevIsoCode }
    in
    Action
        config
        updatedState
        phoneNumber
        cmd
        |> andThen (focus prevIsoCode)


prevCountry : Config msg -> State -> Maybe String
prevCountry config (State state) =
    case state.highlightedCountryByIsoCode of
        Just currentIsoCode ->
            state.filteredCountries
                |> Config.toCountryDataList config
                |> List.map Tuple.first
                |> List.prev currentIsoCode
                |> Just

        Nothing ->
            Nothing


ignoreTaskError : Config msg -> State -> PhoneNumber -> Result.Result Dom.Error a -> msg
ignoreTaskError config state phoneNumber result =
    let
        _ =
            case result of
                Result.Err err ->
                    err |> toString

                Result.Ok _ ->
                    ""
    in
    config.onChange state phoneNumber Cmd.none


focus : Maybe String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
focus maybeIsoCode config state phoneNumber cmd =
    let
        focusCmd isoCode =
            Dom.focus (Config.getCountryElementId config isoCode)
                |> Task.attempt (ignoreTaskError config state phoneNumber)

        focusSearchCmd =
            Dom.focus (Config.getSearchInputId config)
                |> Task.attempt (ignoreTaskError config state phoneNumber)
    in
    maybeIsoCode
        |> Maybe.map focusCmd
        |> Maybe.withDefault focusSearchCmd
        |> appendCmd config state phoneNumber cmd


focusInput : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
focusInput config state phoneNumber cmd =
    Dom.focus (Config.getPhoneNumberInputId config)
        |> Task.attempt (ignoreTaskError config state phoneNumber)
        |> appendCmd config state phoneNumber cmd


appendCmd : Config msg -> State -> PhoneNumber -> Cmd msg -> Cmd msg -> Action msg
appendCmd config state phoneNumber firstCmd secondCmd =
    Action config state phoneNumber (Cmd.batch [ firstCmd, secondCmd ])


updateKeyword : String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
updateKeyword keyword config (State state) phoneNumber cmd =
    Action
        config
        (State { state | keyword = keyword })
        phoneNumber
        cmd
        |> andThen filterCountries


navigateCountry : KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
navigateCountry arrowKey config (State state) phoneNumber cmd =
    let
        doNothing =
            Action config (State state) phoneNumber cmd
    in
    case arrowKey of
        Arrow Left ->
            highlightPrevCountry config (State state) phoneNumber cmd

        Arrow Up ->
            highlightPrevCountry config (State state) phoneNumber cmd

        Arrow Right ->
            highlightNextCountry config (State state) phoneNumber cmd

        Arrow Down ->
            highlightNextCountry config (State state) phoneNumber cmd

        _ ->
            doNothing


autocloseCountryDropdown : FocusEvent -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
autocloseCountryDropdown focusEvent config (State state) phoneNumber cmd =
    let
        updatedState =
            { state | action = "autocloseCountryDropdown" }

        doNothing =
            Action config (State { state | action = "autocloseCountryDropdown.doNothing" }) phoneNumber cmd

        domId =
            focusEvent.relatedTargetId |> Maybe.withDefault ""
    in
    if Config.isDropdownElement domId config (State updatedState) || Config.isCountryPicker domId config then
        doNothing
    else
        Action config (State { updatedState | countryPickerState = CountryPickerClosed }) phoneNumber Cmd.none
