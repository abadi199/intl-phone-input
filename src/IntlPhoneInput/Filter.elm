module IntlPhoneInput.Filter
    exposing
        ( contains
        , filter
        , filterList
        )

import Dict exposing (Dict)
import IntlPhoneInput.Type exposing (CountryData)
import String


filter : String -> Dict String (CountryData msg) -> Dict String (CountryData msg)
filter keyword dict =
    if String.isEmpty keyword then
        dict
    else
        dict
            |> Dict.toList
            |> filterList keyword
            |> Dict.fromList


filterList : String -> List ( String, CountryData msg ) -> List ( String, CountryData msg )
filterList keyword list =
    list
        |> List.filter (contains keyword)


contains : String -> ( String, CountryData msg ) -> Bool
contains keyword ( _, { name } ) =
    String.contains (String.toLower keyword) (String.toLower name)
