module Demo exposing (main)

import Html
import IntlPhoneInput


type Msg
    = NoOp


main : Html.Html Msg
main =
    let
        config =
            IntlPhoneInput.defaultConfig (\_ _ -> NoOp)
    in
    IntlPhoneInput.intlPhoneInput config
