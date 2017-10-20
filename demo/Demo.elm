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
    = NoOp
    | HomePhoneChanged IntlPhoneInput.State PhoneNumber (Cmd Msg)
    | OfficePhoneChanged IntlPhoneInput.State PhoneNumber (Cmd Msg)


type alias Model =
    { homePhoneNumber : ( IntlPhoneInput.State, PhoneNumber )
    , officePhoneNumber : ( IntlPhoneInput.State, PhoneNumber )
    }


initialModel : Model
initialModel =
    { homePhoneNumber = ( IntlPhoneInput.initialState, { isoCode = "us", phoneNumber = "5551234" } )
    , officePhoneNumber = ( IntlPhoneInput.initialState, { isoCode = "us", phoneNumber = "5559876" } )
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
    Config.defaultConfig "flags.png" HomePhoneChanged


officePhoneConfig : Config Msg
officePhoneConfig =
    Config.defaultConfig "flags.png" OfficePhoneChanged


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
            [ label [ for (Config.getPhoneNumberInputId homePhoneConfig) ]
                [ text "Home Phone"
                , IntlPhoneInput.intlPhoneInput homePhoneConfig (Tuple.first model.homePhoneNumber) (Tuple.second model.homePhoneNumber)
                ]
            , phoneNumberView homePhoneConfig (Tuple.second model.homePhoneNumber)
            ]
        , div [ class [ FormField ] ]
            [ label
                [ for (Config.getPhoneNumberInputId officePhoneConfig) ]
                [ text "Office Phone"

                -- , IntlPhoneInput.intlPhoneInput officePhoneConfig (Tuple.first model.officePhoneNumber) (Tuple.second model.officePhoneNumber)
                ]
            , phoneNumberView officePhoneConfig (Tuple.second model.officePhoneNumber)
            ]
        ]


phoneNumberView : Config msg -> IntlPhoneInput.Type.PhoneNumber -> Html msg
phoneNumberView config phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    span [ class [ Css.PhoneNumber ] ]
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

        HomePhoneChanged state phoneNumber cmd ->
            ( { model | homePhoneNumber = ( state, phoneNumber ) }, cmd )

        OfficePhoneChanged state phoneNumber cmd ->
            ( { model | officePhoneNumber = ( state, phoneNumber ) }, cmd )
