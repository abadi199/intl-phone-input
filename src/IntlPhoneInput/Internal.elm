module IntlPhoneInput.Internal
    exposing
        ( CountryPickerState(..)
        , State(..)
        , StateData
        , initialState
        , toggleCountryPickerState
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


toggleCountryPickerState : StateData -> StateData
toggleCountryPickerState state =
    case state.countryPickerState of
        CountryPickerClosed ->
            { state | countryPickerState = CountryPickerOpened }

        CountryPickerOpened ->
            { state | countryPickerState = CountryPickerClosed }
