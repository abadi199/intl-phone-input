module IntlPhoneInput
    exposing
        ( State
        , initialState
        , intlPhoneInput
        )

import Html exposing (Html, button, div, input, label, span, text)
import Html.Attributes exposing (id, type_, value)
import Html.CssHelpers
import Html.Events exposing (onClick)
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Country as Country
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(State), StateData)
import IntlPhoneInput.Svg
import IntlPhoneInput.Type exposing (PhoneNumber)
import String


type alias State =
    Internal.State


initialState : State
initialState =
    Internal.initialState


intlPhoneInput : Config msg -> State -> PhoneNumber -> Html msg
intlPhoneInput config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.IntlPhoneInput ] ]
        [ countryPickerView config (State state) phoneNumber
        , countryDropdownView config (State state) phoneNumber
        , phoneInputView config (State state) phoneNumber
        ]


countryPickerView : Config msg -> State -> PhoneNumber -> Html msg
countryPickerView config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    button
        [ class [ Css.CountryPicker ]
        , type_ "button"
        , onClick (toggleCountryDropdown config (State state) phoneNumber)
        ]
        [ Flag.flag config phoneNumber
        , arrow config (State state)
        ]


toggleCountryDropdown : Config msg -> State -> PhoneNumber -> msg
toggleCountryDropdown config (State state) phoneNumber =
    config.onChange (State (Internal.toggleCountryPickerState state)) phoneNumber


arrow : Config msg -> State -> Html msg
arrow config (State state) =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    span [ class [ Css.Arrow ] ] [ IntlPhoneInput.Svg.arrow ]


countryDropdownView : Config msg -> State -> PhoneNumber -> Html msg
countryDropdownView config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    case state.countryPickerState of
        CountryPickerClosed ->
            Html.text ""

        CountryPickerOpened ->
            div [ class [ Css.CountryDropdown ] ]
                [ Country.countriesView config (State state) phoneNumber
                ]


phoneInputView : Config msg -> State -> PhoneNumber -> Html msg
phoneInputView config (State state) phoneNumber =
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
