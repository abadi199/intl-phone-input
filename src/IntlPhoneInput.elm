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
import Html exposing (Html, button, div, input, label, span, text)
import Html.Attributes exposing (id, type_, value)
import Html.CssHelpers
import Html.Events exposing (onClick)
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
    { countryPickerState : CountryPickerState }


type CountryPickerState
    = CountryPickerOpened
    | CountryPickerClosed


initialState : State
initialState =
    State { countryPickerState = CountryPickerClosed }


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
        , countryDropdown config (State state) phoneNumber
        , phoneInput config (State state) phoneNumber
        ]


countryPicker : Config msg -> State -> PhoneNumber -> Html msg
countryPicker config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    button
        [ class [ Css.CountryPicker ]
        , type_ "button"
        , onClick (toggleCountryDropdown config (State state) phoneNumber)
        ]
        [ flag config phoneNumber
        , arrow config (State state)
        ]


toggleCountryDropdown : Config msg -> State -> PhoneNumber -> msg
toggleCountryDropdown config (State state) phoneNumber =
    config.onChange (State (toggleCountryPickerState state)) phoneNumber


toggleCountryPickerState : StateData -> StateData
toggleCountryPickerState state =
    case state.countryPickerState of
        CountryPickerClosed ->
            { state | countryPickerState = CountryPickerOpened }

        CountryPickerOpened ->
            { state | countryPickerState = CountryPickerClosed }


arrow : Config msg -> State -> Html msg
arrow config (State state) =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    span [ class [ Css.Arrow ] ] [ IntlPhoneInput.Svg.arrow ]


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
    span [ class [ Css.Flag ] ] [ flagSvg ]


countryDropdown : Config msg -> State -> PhoneNumber -> Html msg
countryDropdown config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    case state.countryPickerState of
        CountryPickerClosed ->
            Html.text ""

        CountryPickerOpened ->
            div [ class [ Css.CountryDropdown ] ] [ text "Country Dropdown" ]


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
