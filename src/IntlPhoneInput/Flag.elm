module IntlPhoneInput.Flag
    exposing
        ( flag
        )

import Html exposing (Html, span)
import Html.CssHelpers
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Css as Css


flag : Config msg -> String -> Html msg
flag config isoCode =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    span [ class [ Css.Flag, Css.FlagIso isoCode ] ] []
