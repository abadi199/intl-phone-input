module IntlPhoneInput.Css exposing
    ( arrow
    , boxSizingStyle
    , buttonStyle
    , country
    , countryDropdown
    , countryDropdownHidden
    , countryDropdownWidth
    , countryHighlighted
    , countryList
    , countryListItem
    , countryListScroll
    , countryName
    , countryPicker
    , countryPickerHighlighted
    , defaultFlagIso
    , dialCode
    , flag
    , flagIso
    , focusStyle
    , highlightedStyle
    , hoverStyle
    , intlPhoneInput
    , phoneInput
    , placeholder
    , searchInput
    )

{-| Contains all CSS related code for IntlPhoneInput.

@docs Class, css

-}

import Css exposing (..)
import Dict exposing (Dict)
import IntlPhoneInput.Config.Default exposing (isoCodes)



-- CLASS


{-| CSS Classes used in IntlPhoneInput. You can use this classes in your application's elm-css module to override some style.
-}



-- SNIPPET


intlPhoneInput : Style
intlPhoneInput =
    Css.batch
        [ boxSizingStyle
        , position relative
        , displayFlex
        ]


countryPicker : Style
countryPicker =
    Css.batch
        [ boxSizingStyle
        , buttonStyle
        , displayFlex
        , alignItems center
        , padding2 zero (em 0.5)
        , justifyContent center
        , zIndex (int 0)
        , border3 (px 1) solid (rgba 0 0 0 0.075)
        , backgroundColor (rgba 0 0 0 0)
        , property "transition" "background-color 0.2s"
        , hover [ hoverStyle ]
        , focus [ focusStyle, hoverStyle ]
        ]


countryPickerHighlighted : Style
countryPickerHighlighted =
    Css.batch [ hoverStyle ]


countryList : Style
countryList =
    Css.batch
        [ boxSizingStyle
        , padding2 (em 0.5) zero
        , margin zero
        ]


countryListItem : Style
countryListItem =
    Css.batch
        [ boxSizingStyle
        , listStyle none
        , margin zero
        , padding zero
        ]


country : Style
country =
    Css.batch
        [ boxSizingStyle
        , buttonStyle
        , width (pct 100)
        , displayFlex
        , alignItems center
        , justifyContent left
        , padding4 (em 0.5) (em 1) (em 0.5) (em 0.5)
        , focus [ focusStyle, highlightedStyle ]
        , hover [ hoverStyle ]
        ]


countryHighlighted : Style
countryHighlighted =
    Css.batch [ highlightedStyle, hover [ highlightedStyle ] ]


countryName : Style
countryName =
    Css.batch
        [ boxSizingStyle
        , marginLeft (em 0.5)
        ]


flag : Style
flag =
    Css.batch
        [ boxSizingStyle
        , width (px 16)
        , height (px 16)
        , display inlineBlock
        , backgroundImage (url flagImage)
        ]


defaultFlagIso : Style
defaultFlagIso =
    Css.batch
        [ property "background-image" "none"
        , backgroundColor (hex "#aaa")
        , height (px 12)
        ]


flagIso : String -> Style
flagIso isoCode =
    Css.batch
        [ Dict.get isoCode flagPositions |> Maybe.map (\( x, y ) -> backgroundPosition2 (px x) (px y)) |> Maybe.withDefault (backgroundPosition2 zero zero)
        ]


arrow : Style
arrow =
    Css.batch
        [ boxSizingStyle
        , width (px 5)
        , marginLeft (px 7)
        , marginTop (px -4)
        ]


phoneInput : Style
phoneInput =
    Css.batch
        [ boxSizingStyle
        ]


countryDropdown : Style
countryDropdown =
    Css.batch
        [ boxSizingStyle
        , position absolute
        , backgroundColor (rgba 255 255 255 1)
        , top (pct 100)
        , zIndex (int 1)
        , left zero
        , border3 (px 1) solid (hex "#ccc")
        , minWidth (px countryDropdownWidth)
        , displayFlex
        , flexDirection column
        , maxHeight (px 250)
        , opacity (num 1)
        , transform (scale2 1 1)
        , property "transform-origin" "top"
        , property "transition" "transform 0.2s"
        ]


countryDropdownHidden : Style
countryDropdownHidden =
    Css.batch
        [ opacity zero
        , transform (scale2 1 0)
        ]


countryListScroll : Style
countryListScroll =
    Css.batch
        [ boxSizingStyle
        , overflowY auto
        ]


searchInput : Style
searchInput =
    Css.batch
        [ boxSizingStyle
        , backgroundColor (hex "#fff")
        , border zero
        , padding (px 10)
        , margin zero
        , boxShadow5 (px 0) (px 5) (px 10) (px -5) (rgba 0 0 0 0.15)
        , focus [ focusStyle ]
        ]


placeholder : Style
placeholder =
    Css.batch
        [ color (rgba 0 0 0 0.15) ]


dialCode : Style
dialCode =
    Css.batch
        [ color (rgba 0 0 0 0.5), marginLeft (em 0.5) ]



-- MIXIN


boxSizingStyle : Style
boxSizingStyle =
    Css.batch [ boxSizing borderBox ]


hoverStyle : Style
hoverStyle =
    Css.batch
        [ backgroundColor (rgba 0 0 0 0.075)
        , cursor pointer
        ]


highlightedStyle : Style
highlightedStyle =
    Css.batch [ backgroundColor (rgba 0 0 0 0.15) ]


buttonStyle : Style
buttonStyle =
    Css.batch
        [ border zero
        , backgroundColor (rgba 0 0 0 0)
        ]


focusStyle : Style
focusStyle =
    Css.batch
        []



-- CONSTANT


flagPositions : Dict String ( Float, Float )
flagPositions =
    Dict.fromList
        [ ( "MX", ( -112, -144 ) )
        , ( "CZ", ( -48, -48 ) )
        , ( "GY", ( -144, -80 ) )
        , ( "UZ", ( -16, -224 ) )
        , ( "GL", ( -240, -64 ) )
        , ( "TV", ( -160, -208 ) )
        , ( "AS", ( -160, 0 ) )
        , ( "KZ", ( -112, -112 ) )
        , ( "MT", ( -48, -144 ) )
        , ( "MM", ( -192, -128 ) )
        , ( "GI", ( -224, -64 ) )
        , ( "AO", ( -128, 0 ) )
        , ( "MU", ( -64, -144 ) )
        , ( "BO", ( -192, -16 ) )
        , ( "IS", ( -112, -96 ) )
        , ( "MW", ( -96, -144 ) )
        , ( "ME", ( -96, -128 ) )
        , ( "SY", ( -176, -192 ) )
        , ( "CY", ( -32, -48 ) )
        , ( "NC", ( -176, -144 ) )
        , ( "LT", ( -240, -112 ) )
        , ( "AG", ( -48, 0 ) )
        , ( "NA", ( -160, -144 ) )
        , ( "ID", ( 0, -96 ) )
        , ( "GT", ( -96, -80 ) )
        , ( "SN", ( -80, -192 ) )
        , ( "PN", ( -224, -160 ) )
        , ( "AL", ( -80, 0 ) )
        , ( "MV", ( -80, -144 ) )
        , ( "UA", ( -208, -208 ) )
        , ( "TD", ( -224, -192 ) )
        , ( "SC", ( -192, -176 ) )
        , ( "FO", ( -96, -64 ) )
        , ( "VN", ( -112, -224 ) )
        , ( "FJ", ( -48, -64 ) )
        , ( "CM", ( -176, -32 ) )
        , ( "AX", ( -224, 0 ) )
        , ( "EE", ( -176, -48 ) )
        , ( "TL", ( -64, -208 ) )
        , ( "KE", ( -208, -96 ) )
        , ( "LI", ( -176, -112 ) )
        , ( "NF", ( -208, -144 ) )
        , ( "CW", ( -16, -48 ) )
        , ( "MN", ( -208, -128 ) )
        , ( "MS", ( -32, -144 ) )
        , ( "TK", ( -48, -208 ) )
        , ( "UY", ( 0, -224 ) )
        , ( "CV", ( 0, -48 ) )
        , ( "MF", ( -112, -128 ) )
        , ( "IE", ( -16, -96 ) )
        , ( "JO", ( -176, -96 ) )
        , ( "CD", ( -64, -32 ) )
        , ( "GW", ( -128, -80 ) )
        , ( "TG", ( 0, -208 ) )
        , ( "FI", ( -32, -64 ) )
        , ( "PR", ( -240, -160 ) )
        , ( "LY", ( -32, -128 ) )
        , ( "SE", ( -224, -176 ) )
        , ( "BT", ( -240, -16 ) )
        , ( "DJ", ( -80, -48 ) )
        , ( "LA", ( -128, -112 ) )
        , ( "BY", ( -16, -32 ) )
        , ( "IT", ( -128, -96 ) )
        , ( "QA", ( -64, -176 ) )
        , ( "AF", ( -32, 0 ) )
        , ( "BZ", ( -32, -32 ) )
        , ( "PE", ( -128, -160 ) )
        , ( "BS", ( -224, -16 ) )
        , ( "HR", ( -192, -80 ) )
        , ( "CA", ( -48, -32 ) )
        , ( "NE", ( -192, -144 ) )
        , ( "MO", ( -224, -128 ) )
        , ( "KI", ( 0, -112 ) )
        , ( "ST", ( -144, -192 ) )
        , ( "BE", ( -48, -16 ) )
        , ( "BW", ( 0, -32 ) )
        , ( "YT", ( -192, -224 ) )
        , ( "KW", ( -80, -112 ) )
        , ( "AN", ( -112, 0 ) )
        , ( "CN", ( -192, -32 ) )
        , ( "TT", ( -144, -208 ) )
        , ( "AE", ( -16, 0 ) )
        , ( "TH", ( -16, -208 ) )
        , ( "BI", ( -112, -16 ) )
        , ( "EU", ( -16, -64 ) )
        , ( "EC", ( -160, -48 ) )
        , ( "IC", ( -240, -80 ) )
        , ( "ES", ( -240, -48 ) )
        , ( "JM", ( -160, -96 ) )
        , ( "IL", ( -32, -96 ) )
        , ( "SM", ( -64, -192 ) )
        , ( "TZ", ( -192, -208 ) )
        , ( "NI", ( -240, -144 ) )
        , ( "EG", ( -192, -48 ) )
        , ( "PA", ( -112, -160 ) )
        , ( "MR", ( -16, -144 ) )
        , ( "PH", ( -176, -160 ) )
        , ( "PK", ( -192, -160 ) )
        , ( "HU", ( -224, -80 ) )
        , ( "AU", ( -192, 0 ) )
        , ( "LV", ( -16, -128 ) )
        , ( "ZM", ( -224, -224 ) )
        , ( "GN", ( -16, -80 ) )
        , ( "DZ", ( -144, -48 ) )
        , ( "TM", ( -80, -208 ) )
        , ( "VG", ( -80, -224 ) )
        , ( "SB", ( -176, -176 ) )
        , ( "SO", ( -96, -192 ) )
        , ( "KY", ( -96, -112 ) )
        , ( "RW", ( -144, -176 ) )
        , ( "FM", ( -80, -64 ) )
        , ( "MZ", ( -144, -144 ) )
        , ( "TN", ( -96, -208 ) )
        , ( "ET", ( 0, -64 ) )
        , ( "EH", ( -208, -48 ) )
        , ( "GU", ( -112, -80 ) )
        , ( "TO", ( -112, -208 ) )
        , ( "KG", ( -224, -96 ) )
        , ( "SG", ( -240, -176 ) )
        , ( "PW", ( -32, -176 ) )
        , ( "GA", ( -128, -64 ) )
        , ( "AI", ( -64, 0 ) )
        , ( "DE", ( -64, -48 ) )
        , ( "GS", ( -80, -80 ) )
        , ( "SH", ( 0, -192 ) )
        , ( "TJ", ( -32, -208 ) )
        , ( "RU", ( -128, -176 ) )
        , ( "CU", ( -240, -32 ) )
        , ( "AR", ( -144, 0 ) )
        , ( "BD", ( -32, -16 ) )
        , ( "US", ( -240, -208 ) )
        , ( "NG", ( -224, -144 ) )
        , ( "KM", ( -16, -112 ) )
        , ( "GH", ( -208, -64 ) )
        , ( "VE", ( -64, -224 ) )
        , ( "AM", ( -96, 0 ) )
        , ( "PT", ( -16, -176 ) )
        , ( "MC", ( -64, -128 ) )
        , ( "BG", ( -80, -16 ) )
        , ( "BN", ( -176, -16 ) )
        , ( "AT", ( -176, 0 ) )
        , ( "AD", ( 0, 0 ) )
        , ( "MD", ( -80, -128 ) )
        , ( "NO", ( -16, -160 ) )
        , ( "KR", ( -64, -112 ) )
        , ( "PL", ( -208, -160 ) )
        , ( "SR", ( -112, -192 ) )
        , ( "GE", ( -176, -64 ) )
        , ( "SS", ( -128, -192 ) )
        , ( "CO", ( -208, -32 ) )
        , ( "CH", ( -112, -32 ) )
        , ( "LK", ( -192, -112 ) )
        , ( "MY", ( -128, -144 ) )
        , ( "BH", ( -96, -16 ) )
        , ( "LR", ( -208, -112 ) )
        , ( "VU", ( -128, -224 ) )
        , ( "SK", ( -32, -192 ) )
        , ( "GD", ( -160, -64 ) )
        , ( "ML", ( -176, -128 ) )
        , ( "PF", ( -144, -160 ) )
        , ( "UG", ( -224, -208 ) )
        , ( "NL", ( 0, -160 ) )
        , ( "NP", ( -32, -160 ) )
        , ( "RE", ( -80, -176 ) )
        , ( "RS", ( -112, -176 ) )
        , ( "GG", ( -192, -64 ) )
        , ( "GM", ( 0, -80 ) )
        , ( "SA", ( -160, -176 ) )
        , ( "WS", ( -160, -224 ) )
        , ( "VC", ( -48, -224 ) )
        , ( "LB", ( -144, -112 ) )
        , ( "BA", ( 0, -16 ) )
        , ( "BB", ( -16, -16 ) )
        , ( "MA", ( -48, -128 ) )
        , ( "MH", ( -144, -128 ) )
        , ( "BM", ( -160, -16 ) )
        , ( "BF", ( -64, -16 ) )
        , ( "BJ", ( -128, -16 ) )
        , ( "SI", ( -16, -192 ) )
        , ( "PY", ( -48, -176 ) )
        , ( "KH", ( -240, -96 ) )
        , ( "GP", ( -32, -80 ) )
        , ( "CR", ( -224, -32 ) )
        , ( "NZ", ( -80, -160 ) )
        , ( "PG", ( -160, -160 ) )
        , ( "GB", ( -144, -64 ) )
        , ( "FK", ( -64, -64 ) )
        , ( "VA", ( -32, -224 ) )
        , ( "MG", ( -128, -128 ) )
        , ( "IM", ( -48, -96 ) )
        , ( "GQ", ( -48, -80 ) )
        , ( "HN", ( -176, -80 ) )
        , ( "MK", ( -160, -128 ) )
        , ( "KN", ( -32, -112 ) )
        , ( "TF", ( -240, -192 ) )
        , ( "TC", ( -208, -192 ) )
        , ( "VI", ( -96, -224 ) )
        , ( "YE", ( -176, -224 ) )
        , ( "MQ", ( 0, -144 ) )
        , ( "ER", ( -224, -48 ) )
        , ( "LU", ( 0, -128 ) )
        , ( "LC", ( -160, -112 ) )
        , ( "DM", ( -112, -48 ) )
        , ( "CF", ( -80, -32 ) )
        , ( "LS", ( -224, -112 ) )
        , ( "OM", ( -96, -160 ) )
        , ( "IN", ( -64, -96 ) )
        , ( "BL", ( -144, -16 ) )
        , ( "WF", ( -144, -224 ) )
        , ( "CI", ( -128, -32 ) )
        , ( "JP", ( -192, -96 ) )
        , ( "PS", ( 0, -176 ) )
        , ( "HT", ( -208, -80 ) )
        , ( "TR", ( -128, -208 ) )
        , ( "AZ", ( -240, 0 ) )
        , ( "JE", ( -144, -96 ) )
        , ( "IR", ( -96, -96 ) )
        , ( "IQ", ( -80, -96 ) )
        , ( "HK", ( -160, -80 ) )
        , ( "ZW", ( -240, -224 ) )
        , ( "FR", ( -112, -64 ) )
        , ( "AW", ( -208, 0 ) )
        , ( "TW", ( -176, -208 ) )
        , ( "SV", ( -160, -192 ) )
        , ( "SD", ( -208, -176 ) )
        , ( "CL", ( -160, -32 ) )
        , ( "KP", ( -48, -112 ) )
        , ( "CG", ( -96, -32 ) )
        , ( "GR", ( -64, -80 ) )
        , ( "RO", ( -96, -176 ) )
        , ( "SL", ( -48, -192 ) )
        , ( "DK", ( -96, -48 ) )
        , ( "SZ", ( -192, -192 ) )
        , ( "ZA", ( -208, -224 ) )
        , ( "DO", ( -128, -48 ) )
        , ( "NR", ( -48, -160 ) )
        , ( "BR", ( -208, -16 ) )
        , ( "MP", ( -240, -128 ) )
        , ( "NU", ( -64, -160 ) )
        , ( "CK", ( -144, -32 ) )
        ]


countryDropdownWidth : Float
countryDropdownWidth =
    500


flagImage : String
flagImage =
    "data:image/png;base64,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"
