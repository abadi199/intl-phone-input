module IntlPhoneInput.Css
    exposing
        ( Class(..)
        , css
        )

import Css exposing (..)
import Css.Namespace


-- CONSTANT


countryPickerWidth : Float
countryPickerWidth =
    54


countryDropdownWidth : Float
countryDropdownWidth =
    400



-- CLASS


type Class
    = IntlPhoneInput
    | CountryPicker
    | PhoneInput
    | Flag
    | Arrow
    | CountryDropdown
    | CountryList
    | CountryListItem
    | Country
    | CountryName


css : String -> Css.Stylesheet
css namespace =
    (Css.stylesheet << Css.Namespace.namespace namespace)
        [ intlPhoneInput ]



-- SNIPPET


intlPhoneInput : Snippet
intlPhoneInput =
    class IntlPhoneInput
        [ boxSizingMixin
        , position relative
        , displayFlex
        , descendants
            [ countryPicker
            , flag
            , arrow
            , phoneInput
            , countryDropdown
            , countryList
            , countryListItem
            , country
            , countryName
            ]
        ]


countryPicker : Snippet
countryPicker =
    class CountryPicker
        [ boxSizingMixin
        , buttonMixin
        , width (px countryPickerWidth)
        , displayFlex
        , alignItems center
        , justifyContent center
        , zIndex (int 1)
        , hover
            [ hoverMixin
            ]
        ]


countryList : Snippet
countryList =
    class CountryList
        [ boxSizingMixin
        , padding2 (em 0.5) zero
        , margin zero
        ]


countryListItem : Snippet
countryListItem =
    class CountryListItem
        [ boxSizingMixin
        , listStyle none
        , margin zero
        , padding zero
        ]


country : Snippet
country =
    class Country
        [ boxSizingMixin
        , buttonMixin
        , width (pct 100)
        , displayFlex
        , alignItems center
        , justifyContent left
        , padding4 (em 0.5) (em 1) (em 0.5) (em 0.5)
        , hover
            [ hoverMixin ]
        ]


countryName : Snippet
countryName =
    class CountryName
        [ boxSizingMixin
        , marginLeft (em 0.5)
        ]


flag : Snippet
flag =
    class Flag
        [ boxSizingMixin
        , width (px 25)
        , height (px 15)
        , display inlineBlock
        ]


arrow : Snippet
arrow =
    class Arrow
        [ boxSizingMixin
        , width (px 5)
        , marginLeft (px 7)
        , marginTop (px -4)
        ]


phoneInput : Snippet
phoneInput =
    class PhoneInput
        [ boxSizingMixin
        , marginLeft (px -countryPickerWidth)
        , paddingLeft (px (countryPickerWidth + 10))
        ]


countryDropdown : Snippet
countryDropdown =
    class CountryDropdown
        [ boxSizingMixin
        , position absolute
        , top (pct 100)
        , left zero
        , border3 (px 1) solid (hex "#ccc")
        , height (px 200)
        , minWidth (px countryDropdownWidth)
        , overflowY scroll
        ]



-- MIXIN


boxSizingMixin : Mixin
boxSizingMixin =
    mixin [ boxSizing borderBox ]


hoverMixin : Mixin
hoverMixin =
    mixin
        [ backgroundColor (rgba 0 0 0 0.075)
        , cursor pointer
        ]


buttonMixin : Mixin
buttonMixin =
    mixin
        [ border zero
        , backgroundColor (rgba 0 0 0 0)
        ]
