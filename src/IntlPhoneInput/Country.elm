module IntlPhoneInput.Country exposing (countriesView, countryView)

import Dict
import Html exposing (Html, button, div, li, span, text, ul)
import Html.Attributes exposing (type_)
import Html.CssHelpers
import Html.Events exposing (onClick, onFocus, onMouseOver)
import IntlPhoneInput.Action as Action
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Event as Event
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
        , class
            (Css.Country
                :: (if state.highlightedCountryByIsoCode == Just isoCode then
                        [ Css.Highlighted ]
                    else
                        []
                   )
            )
        , id (Config.getCountryElementId config isoCode)
        , onClick (Action.start config (State state) phoneNumber |> Action.selectCountry isoCode |> Action.finish)
        , onMouseOver (Action.start config (State state) phoneNumber |> Action.highlightCountry isoCode |> Action.finish)
        , onFocus (Action.start config (State state) phoneNumber |> Action.highlightCountry isoCode |> Action.finish)
        , Event.onKeyDown (\keyCode -> Action.start config (State state) phoneNumber |> Action.processKeyboardOnCountry keyCode |> Action.finish)
        ]
        [ Flag.flagWrapper config countryData.flag
        , span [ class [ Css.CountryName ] ] [ text countryData.name ]
        ]
