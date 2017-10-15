module IntlPhoneInput.Internal
    exposing
        ( CountryPickerState(..)
        , State(..)
        , StateData
        , initialState
        , toggleCountryPickerState
        )

import Dict exposing (Dict)
import IntlPhoneInput.Type exposing (CountryData)
import Set exposing (Set)


type State
    = State StateData


type alias StateData =
    { countryPickerState : CountryPickerState
    , highlightedCountryByIsoCode : Maybe String
    , filteredCountries : Set String
    , keyword : String
    }


type CountryPickerState
    = CountryPickerOpened
    | CountryPickerClosed


initialState : State
initialState =
    State
        { countryPickerState = CountryPickerClosed
        , highlightedCountryByIsoCode = Nothing
        , filteredCountries = Set.empty
        , keyword = ""
        }


toggleCountryPickerState : StateData -> StateData
toggleCountryPickerState state =
    case state.countryPickerState of
        CountryPickerClosed ->
            { state | countryPickerState = CountryPickerOpened }

        CountryPickerOpened ->
            { state | countryPickerState = CountryPickerClosed }
