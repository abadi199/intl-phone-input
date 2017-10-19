module IntlPhoneInput.Filter
    exposing
        ( contains
        , filterDict
        , filterList
        )

import Dict exposing (Dict)
import IntlPhoneInput.Type exposing (CountryData)
import String


filterDict : String -> Dict String CountryData -> List ( String, CountryData )
filterDict keyword dict =
    if String.isEmpty keyword then
        dict |> Dict.toList
    else
        dict |> Dict.toList |> filterList keyword


filterList : String -> List ( String, CountryData ) -> List ( String, CountryData )
filterList keyword list =
    if String.isEmpty keyword then
        list
    else
        list
            |> List.filter (contains keyword)


contains : String -> ( String, CountryData ) -> Bool
contains keyword ( _, { name } ) =
    String.contains (String.toLower keyword) (String.toLower name)
