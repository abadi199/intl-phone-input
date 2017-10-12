module IntlPhoneInput
    exposing
        ( Config
        , PhoneNumber
        , defaultConfig
        , intlPhoneInput
        )

import Html exposing (Html, div, input, label, text)
import Html.Attributes exposing (id, type_)
import String


type alias Config msg =
    { id : String
    , onChange : State -> PhoneNumber -> msg
    }


defaultConfig : (State -> PhoneNumber -> msg) -> Config msg
defaultConfig onChange =
    { id = "", onChange = onChange }


type State
    = State StateData


type alias StateData =
    {}


type alias PhoneNumber =
    { countryCode : String
    , phoneNumber : String
    }


intlPhoneInput : Config msg -> Html msg
intlPhoneInput config =
    let
        idAttribute =
            if String.isEmpty config.id then
                []
            else
                [ id config.id ]
    in
    div []
        [ input
            ([ type_ "tel"
             ]
                ++ idAttribute
            )
            []
        ]
