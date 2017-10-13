module Demo exposing (main)

import Css
import Demo.Css exposing (Class(..))
import Dict
import Html exposing (Html, div, label, span, text)
import Html.CssHelpers
import IntlPhoneInput
import IntlPhoneInput.Config
import IntlPhoneInput.Css
import IntlPhoneInput.Type


type Msg
    = NoOp
    | IntlPhoneInputChanged IntlPhoneInput.State IntlPhoneInput.Type.PhoneNumber


type alias Model =
    { state : IntlPhoneInput.State
    , phoneNumber : IntlPhoneInput.Type.PhoneNumber
    }


initialModel : Model
initialModel =
    { state = IntlPhoneInput.initialState
    , phoneNumber = { isoCode = "US", phoneNumber = "5551234" }
    }


main : Program Never Model Msg
main =
    Html.program { init = init, update = update, view = view, subscriptions = subscriptions }


init : ( Model, Cmd Msg )
init =
    ( initialModel, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    let
        config =
            IntlPhoneInput.Config.defaultConfig IntlPhoneInputChanged

        { css } =
            Css.compile [ IntlPhoneInput.Css.css config.namespace, Demo.Css.css config.namespace ]

        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Demo ] ]
        [ Html.node "style" [] [ Html.text css ]
        , label []
            [ text "Home Phone"
            , IntlPhoneInput.intlPhoneInput config model.state model.phoneNumber
            ]
        , phoneNumberView config model.phoneNumber
        ]


phoneNumberView : IntlPhoneInput.Config.Config msg -> IntlPhoneInput.Type.PhoneNumber -> Html msg
phoneNumberView config phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    span [ class [ PhoneNumber ] ]
        [ Html.text <|
            "+"
                ++ (Dict.get phoneNumber.isoCode config.countries |> Maybe.map .dialCode |> Maybe.withDefault "XX")
                ++ " "
                ++ phoneNumber.phoneNumber
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        IntlPhoneInputChanged state phoneNumber ->
            ( { model | state = state, phoneNumber = phoneNumber }, Cmd.none )
