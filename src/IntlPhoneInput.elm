module IntlPhoneInput exposing
    ( input, customInput
    , State, initialState
    )

{-| Phone number input with built in international dial code selector.


# View

@docs input, customInput


# Internal

@docs State, initialState

-}

import Html exposing (Attribute, Html, button, div, input, label, span, text)
import Html.Attributes exposing (id, placeholder, type_, value)
import Html.Events exposing (on, onBlur, onClick, onFocus, onInput)
import IntlPhoneInput.Action as Action
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Config.Helper as Config
import IntlPhoneInput.Country as Country
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Event as Event
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal as Internal exposing (CountryPickerState(..), State(..), StateData)
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.Svg
import IntlPhoneInput.Type exposing (PhoneNumber)


{-| Internal state of the Intl Phone Input element.
-}
type alias State =
    Internal.State


{-| The initial state of the Intl Phone Input element
-}
initialState : State
initialState =
    Internal.initialState



-- VIEW


{-| Render the Intl Phone Input element as part of your `view` function.

    type alias model =
        { phoneNumberstate : IntlPhoneInput.State
        , phoneNumber : IntlPhoneInput.Type.PhoneNumber
        }

    type Msg
        = PhoneNumberChanged IntlPhoneInput.State PhoneNumber (Cmd Msg)

    view : Model -> Html Msg
    view model =
        IntlPhoneInput.input
            (IntlPhoneInput.Config.defaultConfig PhoneNumberChanged)
            model.phoneNumberstate
            model.phoneNumber

-}
input : Config msg -> State -> PhoneNumber -> Html msg
input =
    customInput []


{-| Render the Intl Phone Input element as part of your `view` function with some custom attributes to the phone number field.

    type alias model =
        { phoneNumberstate : IntlPhoneInput.State
        , phoneNumber : IntlPhoneInput.Type.PhoneNumber
        }

    type Msg
        = PhoneNumberChanged IntlPhoneInput.State PhoneNumber (Cmd Msg)

    view : Model -> Html Msg
    view model =
        IntlPhoneInput.input
            [ Html.Attributes.class "MyPhoneInput" ]
            (IntlPhoneInput.Config.defaultConfig PhoneNumberChanged)
            model.phoneNumberstate
            model.phoneNumber

-}
customInput : List (Attribute msg) -> Config msg -> State -> PhoneNumber -> Html msg
customInput attributes config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.IntlPhoneInput ] ]
        [ countryPickerView config (State state) phoneNumber
        , countryDropdownView config (State state) phoneNumber
        , phoneInputView attributes config (State state) phoneNumber
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
        , onClick
            (Action.toggleCountryDropdown config (State state) phoneNumber Cmd.none
                |> Action.andThen Action.focusSearchInput
                |> Action.andThen (Action.delay 10 (Action.focus phoneNumber.isoCode))
                |> Action.done
            )
        , Event.batchKeyDown
            [ ( KeyCode.arrowKey
              , \_ config state phoneNumber cmd ->
                    Action.openCountryDropdown config state phoneNumber cmd
                        |> Action.andThen (Action.delay 10 (Action.focus phoneNumber.isoCode))
                        |> Action.andThen Action.focusSearchInput
              )
            , ( KeyCode.key Esc, always <| Action.closeCountryDropdown "CountryPicker:Esc" )
            ]
            config
            (State state)
            phoneNumber
        ]
        [ Flag.flag config phoneNumber.isoCode
        , Config.dialCode config phoneNumber.isoCode
            |> Maybe.map (\dialCode -> span [ class [ Css.DialCode ] ] [ text dialCode ])
            |> Maybe.withDefault (text "")
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
    div
        (case state.countryPickerState of
            CountryPickerClosed ->
                [ class [ Css.CountryDropdown, Css.CountryDropdownHidden ], Html.Attributes.attribute "aria-hidden" "true" ]

            CountryPickerOpened ->
                [ class [ Css.CountryDropdown ] ]
        )
        [ searchInput config (State state) phoneNumber
        , Country.countriesView config (State state) phoneNumber
        ]


searchInput : Config msg -> State -> PhoneNumber -> Html msg
searchInput config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    Html.input
        [ type_ "text"
        , id <| Config.getSearchInputId config
        , case state.countryPickerState of
            Internal.CountryPickerOpened ->
                Html.Attributes.tabindex 0

            Internal.CountryPickerClosed ->
                Html.Attributes.tabindex -1
        , class [ Css.SearchInput ]
        , value state.keyword
        , placeholder "Search"
        , Event.onBlur (State state)
            (\focusEvent -> Action.autocloseCountryDropdown focusEvent config (State state) phoneNumber Cmd.none |> Action.done)
        , Event.batchKeyDown
            [ ( KeyCode.arrowKey, Action.navigateCountry )
            , ( KeyCode.key Enter, always <| Action.closeCountryDropdown "searchInput:Enter" )
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


phoneInputView : List (Attribute msg) -> Config msg -> State -> PhoneNumber -> Html msg
phoneInputView attributes config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    Html.input
        ([ type_ "tel"
         , id <| Config.getPhoneNumberInputId config
         , class [ Css.PhoneInput ]
         , value phoneNumber.phoneNumber
         , onInput
            (\value ->
                Action.updatePhoneNumber value config (State state) phoneNumber Cmd.none
                    |> Action.done
            )
         ]
            ++ attributes
        )
        []
