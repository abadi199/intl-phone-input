module IntlPhoneInput.Flag exposing (flag)

import Dict
import Html.Styled exposing (Html, span)
import Html.Styled.Attributes exposing (css)
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Css as Css
import String


flag : Config msg -> String -> Html msg
flag config originalIsoCode =
    let
        upperCasedIsoCode =
            String.toUpper originalIsoCode

        isoCode =
            if Dict.member upperCasedIsoCode config.countries then
                upperCasedIsoCode

            else
                ""
    in
    span
        [ css [ Css.flag, Css.flagIso isoCode ]
        ]
        []
