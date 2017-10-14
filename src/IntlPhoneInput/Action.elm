module IntlPhoneInput.Action
    exposing
        ( Action
        , finish
        , highlightCountry
        , processKeyboardOnCountry
        , processKeyboardOnPicker
        , removeHighlightedCountry
        , selectCountry
        , start
        , toggleCountryDropdown
        , updatePhoneNumber
        )

import Dict
import Dom
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(State))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.List as List
import IntlPhoneInput.Type as Type exposing (PhoneNumber)
import Task


type Action msg
    = Action (Config msg) State PhoneNumber (Cmd msg)


start : Config msg -> State -> PhoneNumber -> Action msg
start config state phoneNumber =
    Action config state phoneNumber Cmd.none


finish : Action msg -> msg
finish (Action config state phoneNumber cmd) =
    config.onChange state phoneNumber cmd


updatePhoneNumber : String -> Action msg -> Action msg
updatePhoneNumber newPhoneNumber (Action config (State state) phoneNumber cmd) =
    Action config (State state) { phoneNumber | phoneNumber = newPhoneNumber } cmd


selectCountry : String -> Action msg -> Action msg
selectCountry isoCode (Action config (State state) phoneNumber cmd) =
    Action config
        (State (Internal.toggleCountryPickerState state))
        { phoneNumber | isoCode = isoCode }
        cmd


toggleCountryDropdown : Action msg -> Action msg
toggleCountryDropdown ((Action config (State state) phoneNumber cmd) as action) =
    case state.countryPickerState of
        CountryPickerOpened ->
            closeCountryDropdown action

        CountryPickerClosed ->
            openCountryDropdown action


processKeyboardOnPicker : Int -> Action msg -> Action msg
processKeyboardOnPicker keyCode ((Action config state phoneNumber cmd) as action) =
    case KeyCode.toKeyCode keyCode of
        Esc ->
            closeCountryDropdown action

        Left ->
            openCountryDropdown action

        Up ->
            openCountryDropdown action

        Right ->
            openCountryDropdown action

        Down ->
            openCountryDropdown action

        Ignore ->
            action

        Enter ->
            toggleCountryDropdown action


closeCountryDropdown : Action msg -> Action msg
closeCountryDropdown (Action config (State state) phoneNumber cmd) =
    Action
        config
        (State { state | countryPickerState = CountryPickerClosed })
        phoneNumber
        cmd
        |> focusInput


openCountryDropdown : Action msg -> Action msg
openCountryDropdown (Action config (State state) phoneNumber cmd) =
    Action
        config
        (State { state | countryPickerState = CountryPickerOpened })
        phoneNumber
        cmd
        |> highlightCountry phoneNumber.isoCode


highlightCountry : String -> Action msg -> Action msg
highlightCountry isoCode (Action config (State state) phoneNumber cmd) =
    Action config
        (State { state | highlightedCountryByIsoCode = Just isoCode })
        phoneNumber
        cmd
        |> focus (Just isoCode)


removeHighlightedCountry : Action msg -> Action msg
removeHighlightedCountry (Action config (State state) phoneNumber cmd) =
    Action
        config
        (State { state | highlightedCountryByIsoCode = Nothing })
        phoneNumber
        cmd


processKeyboardOnCountry : Int -> Action msg -> Action msg
processKeyboardOnCountry keyCode ((Action config (State state) phoneNumber cmd) as action) =
    case KeyCode.toKeyCode keyCode of
        Esc ->
            closeCountryDropdown action

        Left ->
            highlightPrevCountry action

        Up ->
            highlightPrevCountry action

        Right ->
            highlightNextCountry action

        Down ->
            highlightNextCountry action

        Ignore ->
            action

        Enter ->
            state.highlightedCountryByIsoCode
                |> Maybe.map (flip selectCountry action)
                |> Maybe.withDefault action
                |> closeCountryDropdown


highlightNextCountry : Action msg -> Action msg
highlightNextCountry (Action config (State state) phoneNumber cmd) =
    let
        nextIsoCode =
            nextCountry config state.highlightedCountryByIsoCode

        updatedState =
            State { state | highlightedCountryByIsoCode = nextIsoCode }
    in
    Action
        config
        updatedState
        phoneNumber
        cmd
        |> focus nextIsoCode


nextCountry : Config msg -> Maybe String -> Maybe String
nextCountry config current =
    case current of
        Just currentIsoCode ->
            config.countries |> Dict.keys |> List.next currentIsoCode |> Just

        Nothing ->
            Nothing


highlightPrevCountry : Action msg -> Action msg
highlightPrevCountry (Action config (State state) phoneNumber cmd) =
    let
        prevIsoCode =
            prevCountry config state.highlightedCountryByIsoCode

        updatedState =
            State { state | highlightedCountryByIsoCode = prevIsoCode }
    in
    Action
        config
        updatedState
        phoneNumber
        cmd
        |> focus prevIsoCode


prevCountry : Config msg -> Maybe String -> Maybe String
prevCountry config current =
    case current of
        Just currentIsoCode ->
            config.countries |> Dict.keys |> List.prev currentIsoCode |> Just

        Nothing ->
            Nothing


focus : Maybe String -> Action msg -> Action msg
focus maybeIsoCode ((Action config state phoneNumber cmd) as action) =
    maybeIsoCode
        |> Maybe.map (\isoCode -> Dom.focus (Config.getCountryElementId config isoCode) |> Task.attempt (always <| config.onChange state phoneNumber cmd))
        |> Maybe.withDefault Cmd.none
        |> appendCmd action


focusInput : Action msg -> Action msg
focusInput ((Action config state phoneNumber cmd) as action) =
    Dom.focus (Config.getPhoneNumberInputId config)
        |> Task.attempt (always <| config.onChange state phoneNumber cmd)
        |> appendCmd action


appendCmd : Action msg -> Cmd msg -> Action msg
appendCmd (Action config state phoneNumber firstCmd) secondCmd =
    Action config state phoneNumber (Cmd.batch [ firstCmd, secondCmd ])
