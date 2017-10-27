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
        , focusPhoneNumberInput
        , focusSearchInput
        , navigateCountry
        , openCountryDropdown
        , selectCountry
        , toggleCountryDropdown
        , updateKeyword
        , updatePhoneNumber
        )

import Dict
import Dom
import Dom.Scroll
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Config.Helper as Config
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
        (State { state | action = eventName ++ ":selectCountry:" ++ isoCode })
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
        |> andThen focusPhoneNumberInput


openCountryDropdown : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
openCountryDropdown config (State state) phoneNumber cmd =
    Action
        config
        (State { state | countryPickerState = CountryPickerOpened })
        phoneNumber
        cmd
        |> andThen clearKeyword
        |> andThen filterCountries



-- |> andThen (focus <| Just phoneNumber.isoCode)


clearKeyword : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
clearKeyword config (State state) phoneNumber cmd =
    Action
        config
        (State { state | keyword = "" })
        phoneNumber
        cmd


filterCountries : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
filterCountries config (State state) phoneNumber cmd =
    --
    let
        filteredCountries =
            if String.isEmpty state.keyword then
                config.countries |> Dict.keys |> Set.fromList
            else
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
    in
    Action
        config
        (State
            { state
                | filteredCountries = filteredCountries
            }
        )
        phoneNumber
        cmd
--}



-- |> andThen (focus highlightedCountry)


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


selectNextCountry : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
selectNextCountry config (State state) phoneNumber cmd =
    let
        doNothing =
            Action config (State state) phoneNumber cmd

        maybeNextIsoCode =
            nextCountry config (State state) phoneNumber
    in
    case maybeNextIsoCode of
        Just nextIsoCode ->
            Action
                config
                (State state)
                { phoneNumber | isoCode = nextIsoCode }
                cmd
                |> andThen focusSearchInput
                |> andThen (focus nextIsoCode)

        Nothing ->
            doNothing


nextCountry : Config msg -> State -> PhoneNumber -> Maybe String
nextCountry config (State state) phoneNumber =
    let
        isoCode =
            String.toUpper phoneNumber.isoCode
    in
    if Set.member isoCode state.filteredCountries then
        state.filteredCountries
            |> Config.toCountryDataList config
            |> config.countriesSorter
            |> List.map Tuple.first
            |> List.next isoCode
            |> Just
    else
        state.filteredCountries
            |> Config.toCountryDataList config
            |> config.countriesSorter
            |> List.head
            |> Maybe.map Tuple.first


selectPrevCountry : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
selectPrevCountry config (State state) phoneNumber cmd =
    let
        doNothing =
            Action config (State state) phoneNumber cmd

        maybePrevIsoCode =
            prevCountry config (State state) phoneNumber
    in
    case maybePrevIsoCode of
        Just prevIsoCode ->
            Action
                config
                (State state)
                { phoneNumber | isoCode = prevIsoCode }
                cmd
                |> andThen focusSearchInput
                |> andThen (focus prevIsoCode)

        Nothing ->
            doNothing


prevCountry : Config msg -> State -> PhoneNumber -> Maybe String
prevCountry config (State state) phoneNumber =
    let
        isoCode =
            String.toUpper phoneNumber.isoCode
    in
    if Set.member isoCode state.filteredCountries then
        state.filteredCountries
            |> Config.toCountryDataList config
            |> List.map Tuple.first
            |> List.prev isoCode
            |> Just
    else
        state.filteredCountries
            |> Config.toCountryDataList config
            |> config.countriesSorter
            |> List.head
            |> Maybe.map Tuple.first


ignoreTaskError : Config msg -> State -> PhoneNumber -> Result.Result Dom.Error a -> msg
ignoreTaskError config state phoneNumber result =
    let
        _ =
            case result of
                Result.Err err ->
                    err |> toString

                Result.Ok a ->
                    a |> toString
    in
    config.onChange state phoneNumber Cmd.none


focus : String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
focus isoCode config state phoneNumber cmd =
    isoCode
        |> String.toUpper
        |> Config.getCountryElementId config
        |> Dom.focus
        |> Task.attempt (ignoreTaskError config state phoneNumber)
        |> appendCmd config state phoneNumber cmd


focusSearchInput : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
focusSearchInput config state phoneNumber cmd =
    Dom.focus (Config.getSearchInputId config)
        |> Task.attempt (ignoreTaskError config state phoneNumber)
        |> appendCmd config state phoneNumber cmd


focusPhoneNumberInput : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
focusPhoneNumberInput config state phoneNumber cmd =
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
            selectPrevCountry config (State state) phoneNumber cmd

        Arrow Up ->
            selectPrevCountry config (State state) phoneNumber cmd

        Arrow Right ->
            selectNextCountry config (State state) phoneNumber cmd

        Arrow Down ->
            selectNextCountry config (State state) phoneNumber cmd

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
