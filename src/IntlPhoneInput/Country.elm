module IntlPhoneInput.Country exposing (countriesView, countryView)

import Dict
import Html exposing (Html, div, li, span, text, ul)
import Html.CssHelpers
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal exposing (State(State))
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber)


countriesView : Config msg -> State -> PhoneNumber -> Html msg
countriesView config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    ul [ class [ Css.CountryList ] ]
        (List.map
            (\( isoCode, countryData ) ->
                li [ class [ Css.CountryListItem ] ]
                    [ countryView config isoCode countryData ]
            )
            (Dict.toList <| config.countries)
        )


countryView : Config msg -> String -> CountryData msg -> Html msg
countryView config isoCode countryData =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.Country ] ]
        [ Flag.flagWrapper config countryData.flag
        , span [ class [ Css.CountryName ] ] [ text countryData.name ]
        ]
