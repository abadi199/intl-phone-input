module IntlPhoneInput.Internal exposing
    ( CountryPickerState(..)
    , FocusEvent
    , State(..)
    , StateData
    , initialState
    , toggleCountryPickerState
    )

import Set exposing (Set)


type State
    = State StateData


type alias StateData =
    { countryPickerState : CountryPickerState
    , filteredCountries : Set String
    , keyword : String
    , action : String
    }


type CountryPickerState
    = CountryPickerOpened
    | CountryPickerClosed


initialState : State
initialState =
    State
        { countryPickerState = CountryPickerClosed
        , filteredCountries = Set.empty
        , keyword = ""
        , action = ""
        }


toggleCountryPickerState : StateData -> StateData
toggleCountryPickerState state =
    case state.countryPickerState of
        CountryPickerClosed ->
            { state | countryPickerState = CountryPickerOpened }

        CountryPickerOpened ->
            { state | countryPickerState = CountryPickerClosed }


type alias FocusEvent =
    { relatedTargetId : Maybe String
    }
