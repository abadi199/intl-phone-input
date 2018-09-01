module IntlPhoneInput.Country exposing
    ( countriesView
    , countryView
    )

import Dict
import Html.Styled exposing (Html, button, div, li, span, text, ul)
import Html.Styled.Attributes exposing (css, id, type_)
import Html.Styled.Events exposing (onBlur, onClick, onFocus, onMouseOver)
import Html.Styled.Keyed
import IntlPhoneInput.Action as Action
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Config.Helper as Config
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Event as Event
import IntlPhoneInput.Filter as Filter
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal as Internal exposing (State(..))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber)
import Set


countriesView : Config msg -> State -> PhoneNumber -> Html msg
countriesView config (State state) phoneNumber =
    div [ css [ Css.countryListScroll ], id <| Config.getCountryListScrollId config ]
        [ Html.Styled.Keyed.ul [ css [ Css.countryList ] ]
            (List.map
                (\( isoCode, countryData ) ->
                    ( isoCode
                    , li [ css [ Css.countryListItem ] ]
                        [ countryView config isoCode countryData (State state) phoneNumber ]
                    )
                )
                (if Set.isEmpty state.filteredCountries && String.isEmpty state.keyword then
                    config.countries |> Dict.toList |> config.countriesSorter

                 else
                    state.filteredCountries |> Config.toCountryDataList config
                )
            )
        ]


countryView : Config msg -> String -> CountryData -> State -> PhoneNumber -> Html msg
countryView config isoCode countryData (State state) phoneNumber =
    div
        [ css
            (Css.country
                :: (if String.toUpper phoneNumber.isoCode == isoCode then
                        [ Css.countryHighlighted ]

                    else
                        []
                   )
            )
        , id (Config.getCountryElementId config isoCode)
        , Html.Styled.Attributes.tabindex -1
        , Event.onClickStopPropagation
            (Action.selectCountry "countryView:onClick:delay" isoCode config (State state) phoneNumber Cmd.none
                |> Action.andThen (Action.closeCountryDropdown "countryView:onClick")
                --|> Action.andThen Action.focus
                |> Action.done
            )
        , Event.onBlur (State state)
            (\focusEvent -> Action.autocloseCountryDropdown focusEvent config (State state) phoneNumber Cmd.none |> Action.done)
        , onFocus (Action.selectCountry "countryView:focus" isoCode config (State state) phoneNumber Cmd.none |> Action.done)
        , Event.batchKeyDown
            [ ( KeyCode.arrowKey, Action.navigateCountry )
            , ( KeyCode.alphabetKey
              , \keyCode keyConfig keyState keyPhoneNumber cmd ->
                    Action.appendKeyword keyCode keyConfig keyState keyPhoneNumber cmd |> Action.andThen Action.focusSearchInput
              )
            , ( KeyCode.key Esc, always <| Action.closeCountryDropdown "countryView:Esc" )
            , ( KeyCode.key Backspace, always Action.deleteKeyword )
            , ( KeyCode.key Enter
              , \_ enterConfig enterState enterPhoneNumber cmd ->
                    Action.closeCountryDropdown "countryView:Enter" enterConfig enterState enterPhoneNumber cmd
                        |> Action.andThen (Action.delay 0 (Action.selectCountry "countryView:Enter" isoCode))
              )
            , ( KeyCode.key Spacebar, always <| Action.appendKeyword (KeyCode.Alphabet ' ') )
            ]
            config
            (State state)
            phoneNumber
        ]
        [ Flag.flag config isoCode
        , span [ css [ Css.countryName ] ]
            [ span [] [ text countryData.name ]
            , span [ css [ Css.dialCode ] ] [ text <| config.dialCodeFormatter countryData.dialCode ]
            ]
        ]
