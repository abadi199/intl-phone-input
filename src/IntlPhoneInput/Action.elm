module IntlPhoneInput.Action
    exposing
        ( selectCountry
        , toggleCountryDropdown
        , updatePhoneNumber
        )

import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Internal as Internal exposing (State(State))
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
