module IntlPhoneInput
    exposing
        ( Config
        , PhoneNumber
        , State
        , defaultConfig
        , initialState
        , intlPhoneInput
        )

import Flags.Us
import Html exposing (Html, div, input, label, text)
import Html.Attributes exposing (id, type_, value)
import Html.CssHelpers
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Svg
import String


type alias Config msg =
    { id : String
    , onChange : State -> PhoneNumber -> msg
    , namespace : String
    }


defaultConfig : (State -> PhoneNumber -> msg) -> Config msg
defaultConfig onChange =
    { id = "", onChange = onChange, namespace = "IntlPhoneInput" }


type State
    = State StateData


type alias StateData =
    {}


initialState : State
initialState =
    State {}


type alias PhoneNumber =
    { countryCode : String
    , phoneNumber : String
    }


intlPhoneInput : Config msg -> State -> PhoneNumber -> Html msg
intlPhoneInput config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.IntlPhoneInput ] ]
        [ countryPicker config (State state) phoneNumber
        , phoneInput config (State state) phoneNumber
        ]


countryPicker : Config msg -> State -> PhoneNumber -> Html msg
countryPicker config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.CountryPicker ] ]
        [ flag config phoneNumber
        , arrow config (State state)
        ]


arrow : Config msg -> State -> Html msg
arrow config (State state) =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.Arrow ] ] [ IntlPhoneInput.Svg.arrow ]


flag : Config msg -> PhoneNumber -> Html msg
flag config phoneNumber =
    let
        flagSvg =
            case String.toUpper phoneNumber.countryCode of
                "US" ->
                    Flags.Us.flag

                _ ->
                    Flags.Us.flag

        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.Flag ] ] [ flagSvg ]


phoneInput : Config msg -> State -> PhoneNumber -> Html msg
phoneInput config (State state) phoneNumber =
    let
        idAttribute =
            if String.isEmpty config.id then
                []
            else
                [ id config.id ]

        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    input
        ([ type_ "tel"
         , class [ Css.PhoneInput ]
         , value phoneNumber.phoneNumber
         ]
            ++ idAttribute
        )
        []
