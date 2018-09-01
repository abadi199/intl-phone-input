module Demo.Css exposing
    ( Class(..)
    , css
    )

import Css exposing (..)
import IntlPhoneInput.Css


type Class
    = Demo
    | Label
    | PhoneNumber
    | FormField


css : String -> Css.Stylesheet
css namespace =
    (Css.stylesheet << Css.Namespace.namespace namespace)
        [ class Demo
            [ displayFlex
            , flexDirection column
            , margin (em 2)
            , alignItems flexStart
            , fontFamilies [ .value sansSerif ]
            , descendants
                [ class Label
                    [ marginBottom (em 0.5) ]
                , class IntlPhoneInput
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

                    -- , backgroundColor (rgba 0 0 0 0.05)
                    , borderRadius (px 2)
                    , boxShadow6 inset zero (px 1) (px 3) zero (rgba 0 0 0 0.15)
                    ]
                , class PhoneNumber
                    [ paddingBottom (em 0.5)
                    , marginLeft (em 1)
                    ]
                , class FormField
                    [ marginBottom (em 1)
                    , displayFlex
                    , flexDirection column
                    , alignItems flexStart
                    ]
                ]
            ]
        ]


boxSizingMixin : Mixin
boxSizingMixin =
    mixin [ boxSizing borderBox ]
