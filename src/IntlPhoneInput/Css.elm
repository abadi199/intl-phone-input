module IntlPhoneInput.Css
    exposing
        ( Class(..)
        , css
        )

import Css exposing (..)
import Css.Namespace


type Class
    = IntlPhoneInput
    | CountryPicker
    | PhoneInput
    | Flag
    | Arrow
    | CountryDropdown


css : String -> Css.Stylesheet
css namespace =
    (Css.stylesheet << Css.Namespace.namespace namespace)
        [ class IntlPhoneInput
            [ boxSizingMixin
            , position relative
            , displayFlex
            , descendants
                [ class CountryPicker
                    [ boxSizingMixin
                    , width (px countryPickerWidth)
                    , displayFlex
                    , alignItems center
                    , justifyContent center
                    , zIndex (int 1)
                    , border zero
                    , backgroundColor (rgba 0 0 0 0)
                    , hover
                        [ backgroundColor (rgba 0 0 0 0.075)
                        , cursor pointer
                        ]
                    ]
                , class Flag
                    [ width (px 25)
                    , height (px 15)
                    ]
                , class Arrow
                    [ width (px 5)
                    , marginLeft (px 7)
                    , marginTop (px -4)
                    ]
                , class PhoneInput
                    [ boxSizingMixin
                    , marginLeft (px -countryPickerWidth)
                    , paddingLeft (px (countryPickerWidth + 10))
                    ]
                , class CountryDropdown
                    [ position absolute
                    , top (pct 100)
                    , left zero
                    , border3 (px 1) solid (hex "#ccc")
                    , height (px 200)
                    ]
                ]
            ]
        ]


countryPickerWidth : Float
countryPickerWidth =
    54


boxSizingMixin : Mixin
boxSizingMixin =
    mixin [ boxSizing borderBox ]
