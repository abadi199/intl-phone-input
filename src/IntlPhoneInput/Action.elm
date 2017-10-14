module IntlPhoneInput.Action
    exposing
        ( highlightCountry
        , processKeyboard
        , removeHighlightedCountry
        , selectCountry
        , toggleCountryDropdown
        , updatePhoneNumber
        )

import Dom
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(State))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.Type as Type exposing (PhoneNumber)
import Task


updatePhoneNumber : Config msg -> State -> PhoneNumber -> String -> msg
updatePhoneNumber config (State state) phoneNumber newPhoneNumber =
    config.onChange (State state) { phoneNumber | phoneNumber = newPhoneNumber } Cmd.none


selectCountry : Config msg -> String -> State -> PhoneNumber -> msg
selectCountry config isoCode (State state) phoneNumber =
    config.onChange
        (State (Internal.toggleCountryPickerState state))
        { phoneNumber | isoCode = isoCode }
        Cmd.none


toggleCountryDropdown : Config msg -> State -> PhoneNumber -> msg
toggleCountryDropdown config (State state) phoneNumber =
    config.onChange
        (State (Internal.toggleCountryPickerState state))
        phoneNumber
        Cmd.none


processKeyboard : Config msg -> State -> PhoneNumber -> Int -> msg
processKeyboard config state phoneNumber keyCode =
    case KeyCode.toKeyCode keyCode of
        Esc ->
            closeCountryDropdown config state phoneNumber

        Left ->
            openCountryDropdown config state phoneNumber

        Up ->
            openCountryDropdown config state phoneNumber

        Right ->
            openCountryDropdown config state phoneNumber

        Down ->
            openCountryDropdown config state phoneNumber

        Ignore ->
            doNothing config state phoneNumber

        Enter ->
            doNothing config state phoneNumber


closeCountryDropdown : Config msg -> State -> PhoneNumber -> msg
closeCountryDropdown config (State state) phoneNumber =
    config.onChange
        (State { state | countryPickerState = CountryPickerClosed })
        phoneNumber
        Cmd.none


openCountryDropdown : Config msg -> State -> PhoneNumber -> msg
openCountryDropdown config (State state) phoneNumber =
    config.onChange
        (State { state | countryPickerState = CountryPickerOpened })
        phoneNumber
        Cmd.none


doNothing : Config msg -> State -> PhoneNumber -> msg
doNothing config state phoneNumber =
    config.onChange state
        phoneNumber
        Cmd.none


highlightCountry : Config msg -> State -> PhoneNumber -> String -> msg
highlightCountry config (State state) phoneNumber isoCode =
    let
        updatedState =
            State { state | highlightedCountryByIsoCode = Just isoCode }
    in
    config.onChange
        updatedState
        phoneNumber
        (Dom.focus (Config.getCountryElementId config isoCode) |> Task.attempt (always <| doNothing config updatedState phoneNumber))


removeHighlightedCountry : Config msg -> State -> PhoneNumber -> msg
removeHighlightedCountry config (State state) phoneNumber =
    config.onChange
        (State { state | highlightedCountryByIsoCode = Nothing })
        phoneNumber
        Cmd.none
