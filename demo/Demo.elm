module Demo exposing (main)

import Css
import Demo.Css as Css exposing (Class(..))
import Dict
import Html exposing (Html, div, label, span, text)
import Html.Attributes exposing (for)
import Html.CssHelpers
import IntlPhoneInput
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Css
import IntlPhoneInput.Type exposing (PhoneNumber)


type Msg
    = HomePhoneChanged IntlPhoneInput.State PhoneNumber (Cmd Msg)


type alias Model =
    { homePhoneNumber : ( IntlPhoneInput.State, PhoneNumber )
    }


initialModel : Model
initialModel =
    { homePhoneNumber = ( IntlPhoneInput.initialState, { isoCode = "", phoneNumber = "" } )
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


homePhoneConfig : Config Msg
homePhoneConfig =
    Config.defaultConfig HomePhoneChanged


view : Model -> Html Msg
view model =
    let
        { css } =
            Css.compile
                [ IntlPhoneInput.Css.css homePhoneConfig.namespace
                , Css.css homePhoneConfig.namespace
                ]

        { id, class, classList } =
            Html.CssHelpers.withNamespace homePhoneConfig.namespace
    in
    div [ class [ Demo ] ]
        [ Html.node "style" [] [ Html.text css ]
        , div [ class [ FormField ] ]
            [ label
                [ for (Config.getPhoneNumberInputId homePhoneConfig)
                , class [ Label ]
                ]
                [ text "Home Phone" ]
            , IntlPhoneInput.input homePhoneConfig (Tuple.first model.homePhoneNumber) (Tuple.second model.homePhoneNumber)
            ]
        ]


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        HomePhoneChanged state phoneNumber cmd ->
            ( { model | homePhoneNumber = ( state, phoneNumber ) }, cmd )
