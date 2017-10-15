module IntlPhoneInput
    exposing
        ( State
        , initialState
        , intlPhoneInput
        )

import Html exposing (Html, button, div, input, label, span, text)
import Html.Attributes exposing (id, placeholder, type_, value)
import Html.CssHelpers
import Html.Events exposing (on, onClick, onInput)
import IntlPhoneInput.Action as Action
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Country as Country
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Event as Event
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(State), StateData)
import IntlPhoneInput.Svg
import IntlPhoneInput.Type exposing (PhoneNumber)


type alias State msg =
    Internal.State msg


initialState : State msg
initialState =
    Internal.initialState



-- VIEW


intlPhoneInput : Config msg -> State msg -> PhoneNumber -> Html msg
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


countryPickerView : Config msg -> State msg -> PhoneNumber -> Html msg
countryPickerView config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    button
        [ class [ Css.CountryPicker ]
        , type_ "button"
        , onClick (Action.toggleCountryDropdown config (State state) phoneNumber Cmd.none |> Action.done)
        , Event.onKeyDown (\keyCode -> Action.processKeyboardOnPicker keyCode config (State state) phoneNumber Cmd.none |> Action.done)
        ]
        [ Flag.flag config phoneNumber
        , arrowView config (State state)
        ]


arrowView : Config msg -> State msg -> Html msg
arrowView config (State state) =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    span [ class [ Css.Arrow ] ] [ IntlPhoneInput.Svg.arrow ]


countryDropdownView : Config msg -> State msg -> PhoneNumber -> Html msg
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
                [ input
                    [ type_ "text"
                    , class [ Css.SearchInput ]
                    , value state.keyword
                    , placeholder "Search"
                    ]
                    []
                , Country.countriesView config (State state) phoneNumber
                ]


phoneInputView : Config msg -> State msg -> PhoneNumber -> Html msg
phoneInputView config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    input
        [ type_ "tel"
        , class [ Css.PhoneInput ]
        , value phoneNumber.phoneNumber
        , onInput
            (\value ->
                Action.updatePhoneNumber value config (State state) phoneNumber Cmd.none
                    |> Action.done
            )
        , id <| Config.getPhoneNumberInputId config
        ]
        []
