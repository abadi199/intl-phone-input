module IntlPhoneInput.Action
    exposing
        ( Action
        , andThen
        , done
        , focus
        , highlightCountry
        , processKeyboardOnCountry
        , processKeyboardOnPicker
        , removeHighlightedCountry
        , selectCountry
        , toggleCountryDropdown
        , updateKeyword
        , updatePhoneNumber
        )

import Dict
import Dom
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Filter as Filter
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(State))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.List as List
import IntlPhoneInput.Type as Type exposing (PhoneNumber)
import Set
import String
import Task


type Action msg
    = Action (Config msg) State PhoneNumber (Cmd msg)


done : Action msg -> msg
done (Action config state phoneNumber cmd) =
    config.onChange state phoneNumber cmd


andThen : (Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg) -> Action msg -> Action msg
andThen f (Action config state phoneNumber cmd) =
    f config state phoneNumber cmd


updatePhoneNumber : String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
updatePhoneNumber newPhoneNumber config (State state) phoneNumber cmd =
    Action config (State state) { phoneNumber | phoneNumber = newPhoneNumber } cmd


selectCountry : String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
selectCountry isoCode config (State state) phoneNumber cmd =
    Action config
        (State (Internal.toggleCountryPickerState state))
        { phoneNumber | isoCode = isoCode }
        cmd


toggleCountryDropdown : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
toggleCountryDropdown config (State state) phoneNumber cmd =
    case state.countryPickerState of
        CountryPickerOpened ->
            closeCountryDropdown config (State state) phoneNumber cmd

        CountryPickerClosed ->
            openCountryDropdown config (State state) phoneNumber cmd


processKeyboardOnPicker : Int -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
processKeyboardOnPicker keyCode config state phoneNumber cmd =
    let
        doNothing =
            Action config state phoneNumber cmd
    in
    case KeyCode.toKeyCode keyCode of
        Esc ->
            closeCountryDropdown config state phoneNumber cmd

        Left ->
            openCountryDropdown config state phoneNumber cmd

        Up ->
            openCountryDropdown config state phoneNumber cmd

        Right ->
            openCountryDropdown config state phoneNumber cmd

        Down ->
            openCountryDropdown config state phoneNumber cmd

        Enter ->
            toggleCountryDropdown config state phoneNumber cmd

        Alphabet char ->
            openCountryDropdown config state phoneNumber cmd

        Backspace ->
            doNothing

        Ignore ->
            doNothing


closeCountryDropdown : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
closeCountryDropdown config (State state) phoneNumber cmd =
    Action
        config
        (State { state | countryPickerState = CountryPickerClosed })
        phoneNumber
        cmd
        |> andThen focusInput


openCountryDropdown : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
openCountryDropdown config (State state) phoneNumber cmd =
    Action
        config
        (State { state | countryPickerState = CountryPickerOpened })
        phoneNumber
        cmd
        |> andThen clearKeyword
        |> andThen filterCountries
        |> andThen (highlightCountry phoneNumber.isoCode)
        |> andThen (focus (Just phoneNumber.isoCode))


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
        (State { state | highlightedCountryByIsoCode = Just isoCode })
        phoneNumber
        cmd


removeHighlightedCountry : Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
removeHighlightedCountry config (State state) phoneNumber cmd =
    Action
        config
        (State { state | highlightedCountryByIsoCode = Nothing })
        phoneNumber
        cmd


processKeyboardOnCountry : Int -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
processKeyboardOnCountry keyCode config (State state) phoneNumber cmd =
    let
        doNothing =
            Action config (State state) phoneNumber cmd
    in
    case KeyCode.toKeyCode keyCode of
        Esc ->
            closeCountryDropdown config (State state) phoneNumber cmd

        Left ->
            highlightPrevCountry config (State state) phoneNumber cmd

        Up ->
            highlightPrevCountry config (State state) phoneNumber cmd

        Right ->
            highlightNextCountry config (State state) phoneNumber cmd

        Down ->
            highlightNextCountry config (State state) phoneNumber cmd

        Alphabet char ->
            appendKeyword char config (State state) phoneNumber cmd

        Enter ->
            state.highlightedCountryByIsoCode
                |> Maybe.map (\isoCode -> selectCountry isoCode config (State state) phoneNumber cmd)
                |> Maybe.withDefault (Action config (State state) phoneNumber cmd)
                |> andThen closeCountryDropdown

        Backspace ->
            deleteKeyword config (State state) phoneNumber cmd

        Ignore ->
            doNothing


appendKeyword : Char -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
appendKeyword char config (State state) phoneNumber cmd =
    Action
        config
        (State { state | keyword = state.keyword ++ (char |> String.fromChar |> String.toLower) })
        phoneNumber
        cmd
        |> andThen filterCountries


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


ignoreTaskError : Config msg -> State -> PhoneNumber -> Result.Result Dom.Error () -> msg
ignoreTaskError config state phoneNumber result =
    let
        _ =
            case result of
                Result.Err err ->
                    Debug.log "Task error" err |> toString

                Result.Ok _ ->
                    ""
    in
    config.onChange state phoneNumber Cmd.none


focus : Maybe String -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg
focus maybeIsoCode config state phoneNumber cmd =
    let
        focusCmd isoCode =
            Dom.focus (Config.getCountryElementId config isoCode)
                |> Task.andThen (\_ -> Dom.focus (Config.getSearchInputId config))
                |> Task.attempt (ignoreTaskError config state phoneNumber)
    in
    maybeIsoCode
        |> Maybe.map focusCmd
        |> Maybe.withDefault Cmd.none
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
