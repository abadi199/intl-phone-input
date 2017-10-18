module IntlPhoneInput.Filter
    exposing
        ( contains
        , filterList
        )

import IntlPhoneInput.Type exposing (CountryData)
import String


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
