module Demo exposing (main)

import Browser
import Css
import Demo.Css as Css exposing (Class(..))
import Dict
import Html
import Html.Styled exposing (Html, div, label, span, text)
import Html.Styled.Attributes exposing (css, for)
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


main : Program () Model Msg
main =
    Browser.document { init = init, update = update, view = view, subscriptions = subscriptions }


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


init : () -> ( Model, Cmd Msg )
init _ =
    ( initialModel, Cmd.none )


homePhoneConfig : Config Msg
homePhoneConfig =
    Config.config "HomePhone" HomePhoneChanged


view : Model -> Browser.Document Msg
view model =
    { title = ""
    , body =
        [ div [ css [] ]
            [ div []
                [ label
                    [ for (Config.getPhoneNumberInputId homePhoneConfig)
                    ]
                    [ text "Home Phone" ]
                , IntlPhoneInput.inputStyled homePhoneConfig (Tuple.first model.homePhoneNumber) (Tuple.second model.homePhoneNumber)
                ]
            ]
            |> Html.Styled.toUnstyled
        ]
    }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        HomePhoneChanged state phoneNumber cmd ->
            ( { model | homePhoneNumber = ( state, phoneNumber ) }, cmd )
