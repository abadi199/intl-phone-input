module IntlPhoneInput.Flag
    exposing
        ( flag
        )

import Dict
import Html exposing (Html, span)
import Html.Attributes exposing (style)
import Html.CssHelpers
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Css as Css
import String


flag : Config msg -> String -> Html msg
flag config originalIsoCode =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace

        upperCasedIsoCode =
            String.toUpper originalIsoCode

        isoCode =
            if Dict.member upperCasedIsoCode config.countries then
                upperCasedIsoCode
            else
                ""
    in
    span [ class [ Css.Flag, Css.FlagIso isoCode ], style [ ( "backgroundImage", "url(" ++ config.flagUrl ++ ")" ) ] ] []
