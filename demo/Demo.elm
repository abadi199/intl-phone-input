module Demo exposing (main)

import Css
import Demo.Css exposing (Class(..))
import Html exposing (Html, div, label, text)
import Html.CssHelpers
import IntlPhoneInput
import IntlPhoneInput.Css


type Msg
    = NoOp
    | IntlPhoneInputChanged IntlPhoneInput.State IntlPhoneInput.PhoneNumber


type alias Model =
    { state : IntlPhoneInput.State
    , phoneNumber : IntlPhoneInput.PhoneNumber
    }


initialModel : Model
initialModel =
    { state = IntlPhoneInput.initialState
    , phoneNumber = { countryCode = "US", phoneNumber = "5551234" }
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
            IntlPhoneInput.defaultConfig IntlPhoneInputChanged

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
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        IntlPhoneInputChanged state phoneNumber ->
            ( { model | state = state, phoneNumber = phoneNumber }, Cmd.none )
