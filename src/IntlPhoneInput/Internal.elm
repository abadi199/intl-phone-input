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


type State msg
    = State (StateData msg)


type alias StateData msg =
    { countryPickerState : CountryPickerState
    , highlightedCountryByIsoCode : Maybe String
    , filteredCountries : Dict String (CountryData msg)
    , keyword : String
    }


type CountryPickerState
    = CountryPickerOpened
    | CountryPickerClosed


initialState : State msg
initialState =
    State
        { countryPickerState = CountryPickerClosed
        , highlightedCountryByIsoCode = Nothing
        , filteredCountries = Dict.empty
        , keyword = ""
        }


toggleCountryPickerState : StateData msg -> StateData msg
toggleCountryPickerState state =
    case state.countryPickerState of
        CountryPickerClosed ->
            { state | countryPickerState = CountryPickerOpened }

        CountryPickerOpened ->
            { state | countryPickerState = CountryPickerClosed }
