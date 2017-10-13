module IntlPhoneInput.Country exposing (countriesView, countryView)

import Dict
import Html exposing (Html, button, div, li, span, text, ul)
import Html.Attributes exposing (type_)
import Html.CssHelpers
import Html.Events exposing (onClick)
import IntlPhoneInput.Action as Action
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal as Internal exposing (State(State))
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
                    [ countryView config isoCode countryData (State state) phoneNumber ]
            )
            (Dict.toList <| config.countries)
        )


countryView : Config msg -> String -> CountryData msg -> State -> PhoneNumber -> Html msg
countryView config isoCode countryData (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    button
        [ type_ "button"
        , class [ Css.Country ]
        , onClick <| Action.selectCountry config isoCode (State state) phoneNumber
        ]
        [ Flag.flagWrapper config countryData.flag
        , span [ class [ Css.CountryName ] ] [ text countryData.name ]
        ]