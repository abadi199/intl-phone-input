module IntlPhoneInput.Flag
    exposing
        ( flag
        , flagWrapper
        )

import Html exposing (Html, span)
import Html.CssHelpers
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Svg as Svg
import IntlPhoneInput.Type exposing (PhoneNumber)


flag : Config msg -> PhoneNumber -> Html msg
flag config phoneNumber =
    flagWrapper config (Svg.flag phoneNumber.isoCode)


flagWrapper : Config msg -> Html msg -> Html msg
flagWrapper config flagHtml =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    span [ class [ Css.Flag ] ] [ flagHtml ]
