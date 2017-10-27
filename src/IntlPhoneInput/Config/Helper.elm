module IntlPhoneInput.Config.Helper
    exposing
        ( dialCode
        , getCountryElementId
        , getCountryListScrollId
        , getCountryPickerId
        , getSearchInputId
        , isCountryPicker
        , isDropdownElement
        , toCountryDataList
        )

import Dict
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Config.Default as Default
import IntlPhoneInput.Internal exposing (State(..), initialState)
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber, emptyPhoneNumber)
import Set exposing (Set)


getSearchInputId : Config msg -> String
getSearchInputId config =
    config.namespace ++ "SearchInput" ++ config.hash


getCountryElementId : Config msg -> String -> String
getCountryElementId config isoCode =
    config.namespace ++ "Country" ++ String.toUpper isoCode ++ config.hash


getCountryListScrollId : Config msg -> String
getCountryListScrollId config =
    config.namespace ++ "CountryListScroll" ++ config.hash


getCountryPickerId : Config msg -> String
getCountryPickerId config =
    config.namespace ++ "CountryPicker" ++ config.hash


isCountryPicker : String -> Config msg -> Bool
isCountryPicker domId config =
    getCountryPickerId config == domId


isDropdownElement : String -> Config msg -> State -> Bool
isDropdownElement domId config (State state) =
    let
        isCountryElement =
            state.filteredCountries
                |> Set.map (getCountryElementId config)
                |> Set.member domId

        isSearchElement =
            domId == getSearchInputId config
    in
    isCountryElement || isSearchElement


toCountryDataList : Config msg -> Set String -> List ( String, CountryData )
toCountryDataList config set =
    set
        |> Set.toList
        |> List.map Default.toCountryData
        |> config.countriesSorter


dialCode : Config msg -> String -> Maybe String
dialCode config isoCode =
    Dict.get (String.toUpper isoCode) config.countries
        |> Maybe.map .dialCode
        |> Maybe.map config.dialCodeFormatter
