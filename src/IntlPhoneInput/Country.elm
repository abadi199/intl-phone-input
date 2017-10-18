module IntlPhoneInput.Country
    exposing
        ( countriesView
        , countryView
        )

import Html exposing (Html, button, div, li, span, text, ul)
import Html.Attributes exposing (type_)
import Html.CssHelpers
import Html.Events exposing (onBlur, onClick, onFocus, onMouseOver)
import IntlPhoneInput.Action as Action
import IntlPhoneInput.Config as Config exposing (Config)
import IntlPhoneInput.Css as Css
import IntlPhoneInput.Event as Event
import IntlPhoneInput.Flag as Flag
import IntlPhoneInput.Internal as Internal exposing (State(State))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber)


countriesView : Config msg -> State -> PhoneNumber -> Html msg
countriesView config (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div [ class [ Css.CountryListScroll ] ]
        [ ul [ class [ Css.CountryList ] ]
            (List.map
                (\( isoCode, countryData ) ->
                    li [ class [ Css.CountryListItem ] ]
                        [ countryView config isoCode countryData (State state) phoneNumber ]
                )
                (state.filteredCountries |> Config.toCountryDataList config)
            )
        ]


countryView : Config msg -> String -> CountryData msg -> State -> PhoneNumber -> Html msg
countryView config isoCode countryData (State state) phoneNumber =
    let
        { id, class, classList } =
            Html.CssHelpers.withNamespace config.namespace
    in
    div
        [ class
            (Css.Country
                :: (if state.highlightedCountryByIsoCode == Just isoCode then
                        [ Css.Highlighted ]
                    else
                        []
                   )
            )
        , id (Config.getCountryElementId config isoCode)
        , Html.Attributes.tabindex 0
        , Event.onClickStopPropagation (Action.selectCountry isoCode config (State state) phoneNumber Cmd.none |> Action.done)
        , Event.onBlur (State state)
            (\focusEvent -> Action.autocloseCountryDropdown focusEvent config (State state) phoneNumber Cmd.none |> Action.done)
        , onMouseOver
            (Action.highlightCountry isoCode config (State state) phoneNumber Cmd.none
                |> Action.done
            )
        , onFocus (Action.highlightCountry isoCode config (State state) phoneNumber Cmd.none |> Action.done)
        , Event.batchKeyDown
            [ ( KeyCode.arrowKey, Action.navigateCountry )
            , ( KeyCode.alphabetKey, Action.appendKeyword )
            , ( KeyCode.key Esc, always Action.closeCountryDropdown )
            , ( KeyCode.key Backspace, always Action.deleteKeyword )
            , ( KeyCode.key Enter, always (Action.selectCountry isoCode) )
            , ( KeyCode.key Spacebar, \_ -> Action.appendKeyword (KeyCode.Alphabet ' ') )
            ]
            config
            (State state)
            phoneNumber
        ]
        [ Flag.flagWrapper config countryData.flag
        , span [ class [ Css.CountryName ] ] [ text countryData.name ]
        ]
