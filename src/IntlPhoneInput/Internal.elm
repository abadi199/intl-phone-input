module IntlPhoneInput.Internal
    exposing
        ( CountryPickerState(..)
        , State(..)
        , StateData
        , initialState
        )


type State
    = State StateData


type alias StateData =
    { countryPickerState : CountryPickerState }


type CountryPickerState
    = CountryPickerOpened
    | CountryPickerClosed


initialState : State
initialState =
    State { countryPickerState = CountryPickerClosed }
