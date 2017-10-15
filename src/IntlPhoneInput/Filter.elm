module IntlPhoneInput.Filter
    exposing
        ( contains
        , filterList
        )

import IntlPhoneInput.Type exposing (CountryData)
import String


filterList : String -> List ( String, CountryData msg ) -> List ( String, CountryData msg )
filterList keyword list =
    if String.isEmpty keyword then
        list
    else
        list
            |> List.filter (contains keyword)


contains : String -> ( String, CountryData msg ) -> Bool
contains keyword ( _, { name } ) =
    String.contains (String.toLower keyword) (String.toLower name)
