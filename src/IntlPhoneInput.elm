module IntlPhoneInput
    exposing
        ( State
        , initialState
        , intlPhoneInput
        )

import Html exposing (Html, button, div, input, label, span, text)
import Html.Attributes exposing (id, placeholder, type_, value)
import Html.CssHelpers
import Html.Events exposing (on, onBlur, onClick, onFocus, onInput)
import IntlPhoneInput.Action as Action
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Country as Country
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Event as Event
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(State), StateData)
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.Svg
import IntlPhoneInput.Type exposing (PhoneNumber)


type alias State =
    Internal.State


initialState : State
initialState =
    Internal.initialState



-- VIEW


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
        [ class
            (Css.CountryPicker
                :: (case state.countryPickerState of
                        CountryPickerOpened ->
                            [ Css.Highlighted ]

                        CountryPickerClosed ->
                            []
                   )
            )
        , type_ "button"
        , id (Config.getCountryPickerId config)
        , onClick (Action.toggleCountryDropdown config (State state) phoneNumber Cmd.none |> Action.done)
        , Event.batchKeyDown
            [ ( KeyCode.arrowKey, always Action.openCountryDropdown )
            , ( KeyCode.key Esc, always <| Action.closeCountryDropdown "CountryPicker:Esc" )
            ]
            config
            (State state)
            phoneNumber
        , Event.onBlur (State state)
            (\focusEvent -> Action.autocloseCountryDropdown focusEvent config (State state) phoneNumber Cmd.none |> Action.done)
        ]
        [ Flag.flag config phoneNumber
        , arrowView config (State state)
        ]


arrowView : Config msg -> State -> Html msg
arrowView config (State state) =
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
            div
                [ class [ Css.CountryDropdown ]
                ]
                [ searchInput config (State state) phoneNumber
                , Country.countriesView config (State state) phoneNumber
                ]


searchInput : Config msg -> State -> PhoneNumber -> Html msg
searchInput config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    input
        [ type_ "text"
        , id <| Config.getSearchInputId config
        , class [ Css.SearchInput ]
        , value state.keyword
        , placeholder "Search"
        , Event.onBlur (State state)
            (\focusEvent -> Action.autocloseCountryDropdown focusEvent config (State state) phoneNumber Cmd.none |> Action.done)
        , Event.batchKeyDown
            [ ( KeyCode.arrowKey, Action.navigateCountry )
            , ( KeyCode.key Enter, always Action.selectHighlightedCountry )
            , ( KeyCode.key Esc, always <| Action.closeCountryDropdown "searchInput:Esc" )
            ]
            config
            (State state)
            phoneNumber
        , onInput
            (\value ->
                Action.updateKeyword value config (State state) phoneNumber Cmd.none
                    |> Action.done
            )
        , Event.onClickStopPropagation (Action.doNothing config (State state) phoneNumber)
        ]
        []


phoneInputView : Config msg -> State -> PhoneNumber -> Html msg
phoneInputView config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    input
        [ type_ "tel"
        , id <| Config.getPhoneNumberInputId config
        , class [ Css.PhoneInput ]
        , value phoneNumber.phoneNumber
        , onInput
            (\value ->
                Action.updatePhoneNumber value config (State state) phoneNumber Cmd.none
                    |> Action.done
            )
        ]
        []
