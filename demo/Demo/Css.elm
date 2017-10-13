module Demo.Css
    exposing
        ( Class(..)
        , css
        )

import Css exposing (..)
import Css.Elements exposing (input)
import Css.Namespace
import IntlPhoneInput.Css exposing (Class(..))


type Class
    = Demo


css : String -> Css.Stylesheet
css namespace =
    (Css.stylesheet << Css.Namespace.namespace namespace)
        [ class Demo
            [ displayFlex
            , fontFamilies [ .value sansSerif ]
            , descendants
                [ class IntlPhoneInput
                    [ descendants
                        [ class CountryPicker []
                        , class PhoneInput
                            [ width (em 25) ]
                        ]
                    ]
                , input
                    [ fontSize (em 0.875)
                    , border zero
                    , padding2 (em 0.75) (em 0.5)
                    , backgroundColor (rgba 0 0 0 0.05)
                    , borderRadius (px 2)
                    , boxShadow6 inset zero (px 1) (px 3) zero (rgba 0 0 0 0.15)
                    ]
                ]
            ]
        ]


boxSizingMixin : Mixin
boxSizingMixin =
    mixin [ boxSizing borderBox ]
