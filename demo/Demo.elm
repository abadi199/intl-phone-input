module Demo exposing (main)

import Css
import Demo.Css exposing (Class(..))
import Html exposing (div, label, text)
import Html.CssHelpers
import IntlPhoneInput
import IntlPhoneInput.Css


type Msg
    = NoOp


type alias Model =
    { state : IntlPhoneInput.State
    , phoneNumber : IntlPhoneInput.PhoneNumber
    }


initialModel : Model
initialModel =
    { state = IntlPhoneInput.initialState
    , phoneNumber = { countryCode = "US", phoneNumber = "5551234" }
    }


main : Html.Html Msg
main =
    let
        config =
            IntlPhoneInput.defaultConfig (\_ _ -> NoOp)

        { css } =
            Css.compile [ IntlPhoneInput.Css.css config.namespace, Demo.Css.css config.namespace ]

        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Demo ] ]
        [ Html.node "style" [] [ Html.text css ]
        , label []
            [ text "Home Phone"
            , IntlPhoneInput.intlPhoneInput config initialModel.state initialModel.phoneNumber
            ]
        ]
