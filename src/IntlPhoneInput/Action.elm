module IntlPhoneInput.Action
    exposing
        ( highlightCountry
        , processKeyboard
        , removeHighlightedCountry
        , selectCountry
        , toggleCountryDropdown
        , updatePhoneNumber
        )

import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(State))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.Type as Type exposing (PhoneNumber)


updatePhoneNumber : Config msg -> State -> PhoneNumber -> String -> msg
updatePhoneNumber config (State state) phoneNumber newPhoneNumber =
    config.onChange (State state) { phoneNumber | phoneNumber = newPhoneNumber }


selectCountry : Config msg -> String -> State -> PhoneNumber -> msg
selectCountry config isoCode (State state) phoneNumber =
    config.onChange
        (State (Internal.toggleCountryPickerState state))
        { phoneNumber | isoCode = isoCode }


toggleCountryDropdown : Config msg -> State -> PhoneNumber -> msg
toggleCountryDropdown config (State state) phoneNumber =
    config.onChange (State (Internal.toggleCountryPickerState state)) phoneNumber


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
    config.onChange (State { state | countryPickerState = CountryPickerClosed }) phoneNumber


openCountryDropdown : Config msg -> State -> PhoneNumber -> msg
openCountryDropdown config (State state) phoneNumber =
    config.onChange
        (State { state | countryPickerState = CountryPickerOpened })
        phoneNumber


doNothing : Config msg -> State -> PhoneNumber -> msg
doNothing config state phoneNumber =
    config.onChange state phoneNumber


highlightCountry : Config msg -> State -> PhoneNumber -> String -> msg
highlightCountry config (State state) phoneNumber isoCode =
    config.onChange (State { state | highlightedCountryByIsoCode = Just isoCode }) phoneNumber


removeHighlightedCountry : Config msg -> State -> PhoneNumber -> msg
removeHighlightedCountry config (State state) phoneNumber =
    config.onChange (State { state | highlightedCountryByIsoCode = Nothing }) phoneNumber
