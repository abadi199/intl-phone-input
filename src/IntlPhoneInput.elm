module IntlPhoneInput exposing
    ( input, customInput
    , State, initialState
    , customInputStyled, inputStyled
    )

{-| Phone number input with built in international dial code selector.


# View

@docs input, customInput


# Internal

@docs State, initialState

-}

import Css.Global exposing (global)
import Html
import Html.Styled exposing (Attribute, Html, button, div, input, label, span, text)
import Html.Styled.Attributes exposing (css, id, placeholder, type_, value)
import Html.Styled.Events exposing (on, onBlur, onClick, onFocus, onInput)
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
input : Config msg -> State -> PhoneNumber -> Html.Html msg
input =
    customInput []


{-| Elm CSS version of `input` function. Use this if you use Elm CSS on your project to avoid the `style` tag being rendered to early.
-}
inputStyled : Config msg -> State -> PhoneNumber -> Html msg
inputStyled =
    customInputStyled []


{-| Elm CSS version of `input` function. Use this if you use Elm CSS on your project to avoid the `style` tag being rendered to early.
-}
customInputStyled : List (Attribute msg) -> Config msg -> State -> PhoneNumber -> Html msg
customInputStyled attributes config (State state) phoneNumber =
    div [ css [ Css.intlPhoneInput ] ]
        [ global [ Css.flagImage ]
        , countryPickerView config (State state) phoneNumber
        , countryDropdownView config (State state) phoneNumber
        , phoneInputView attributes config (State state) phoneNumber
        ]


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
customInput : List (Attribute msg) -> Config msg -> State -> PhoneNumber -> Html.Html msg
customInput attributes config state phoneNumber =
    customInputStyled attributes config state phoneNumber
        |> Html.Styled.toUnstyled


countryPickerView : Config msg -> State -> PhoneNumber -> Html msg
countryPickerView config (State state) phoneNumber =
    button
        [ css
            (Css.countryPicker
                :: (case state.countryPickerState of
                        CountryPickerOpened ->
                            [ Css.countryPickerHighlighted ]

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
              , \_ keyConfig keyState keyPhoneNumber cmd ->
                    Action.openCountryDropdown keyConfig keyState keyPhoneNumber cmd
                        |> Action.andThen (Action.delay 10 (Action.focus keyPhoneNumber.isoCode))
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
            |> Maybe.map (\dialCode -> span [ css [ Css.dialCode ] ] [ text dialCode ])
            |> Maybe.withDefault (text "")
        , arrowView config (State state)
        ]


arrowView : Config msg -> State -> Html msg
arrowView config (State state) =
    span [ css [ Css.arrow ] ] [ IntlPhoneInput.Svg.arrow ]


countryDropdownView : Config msg -> State -> PhoneNumber -> Html msg
countryDropdownView config (State state) phoneNumber =
    div
        (case state.countryPickerState of
            CountryPickerClosed ->
                [ css [ Css.countryDropdown, Css.countryDropdownHidden ], Html.Styled.Attributes.attribute "aria-hidden" "true" ]

            CountryPickerOpened ->
                [ css [ Css.countryDropdown ] ]
        )
        [ searchInput config (State state) phoneNumber
        , Country.countriesView config (State state) phoneNumber
        ]


searchInput : Config msg -> State -> PhoneNumber -> Html msg
searchInput config (State state) phoneNumber =
    Html.Styled.input
        [ type_ "text"
        , id <| Config.getSearchInputId config
        , case state.countryPickerState of
            Internal.CountryPickerOpened ->
                Html.Styled.Attributes.tabindex 0

            Internal.CountryPickerClosed ->
                Html.Styled.Attributes.tabindex -1
        , css [ Css.searchInput ]
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
    Html.Styled.input
        ([ type_ "tel"
         , id <| Config.getPhoneNumberInputId config
         , css [ Css.phoneInput ]
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
