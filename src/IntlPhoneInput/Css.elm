module IntlPhoneInput.Css
    exposing
        ( Class(..)
        , css
        )

import Css exposing (..)
import Css.Namespace
import Dict exposing (Dict)
import IntlPhoneInput.Config exposing (isoCodes)


-- CLASS


type Class
    = IntlPhoneInput
    | CountryPicker
    | PhoneInput
    | Flag
    | FlagIso String
    | Arrow
    | CountryDropdown
    | CountryDropdownHidden
    | CountryListScroll
    | CountryList
    | CountryListItem
    | Country
    | CountryName
    | Highlighted
    | SearchInput
    | Placeholder
    | DialCode


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
            , countryListScroll
            , countryList
            , countryListItem
            , country
            , countryName
            , searchInput
            , placeholder
            , dialCode
            ]
        ]


countryPicker : Snippet
countryPicker =
    class CountryPicker
        [ boxSizingMixin
        , buttonMixin
        , displayFlex
        , alignItems center
        , padding2 zero (em 0.5)
        , justifyContent center
        , zIndex (int 0)
        , border3 (px 1) solid (rgba 0 0 0 0.075)
        , backgroundColor (rgba 0 0 0 0)
        , property "transition" "background-color 0.2s"
        , hover [ hoverMixin ]
        , focus [ focusMixin, hoverMixin ]
        , withClass Highlighted [ hoverMixin ]
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
        , withClass Highlighted [ highlightedMixin, hover [ highlightedMixin ] ]
        , focus [ focusMixin, highlightedMixin ]
        , hover [ hoverMixin ]
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
        ([ boxSizingMixin
         , width (px 16)
         , height (px 16)
         , display inlineBlock
         ]
            ++ (isoCodes |> List.map flagIso)
            ++ [ withClass (FlagIso "")
                    [ property "background-image" "none"
                    , backgroundColor (hex "#aaa")
                    , height (px 12)
                    ]
               ]
        )


flagIso : String -> Mixin
flagIso isoCode =
    withClass (FlagIso isoCode)
        [ Dict.get isoCode flagPositions |> Maybe.map (\( x, y ) -> backgroundPosition2 (px x) (px y)) |> Maybe.withDefault (backgroundPosition2 zero zero)
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
        ]


countryDropdown : Snippet
countryDropdown =
    class CountryDropdown
        [ boxSizingMixin
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
        , withClass CountryDropdownHidden
            [ opacity zero
            , transform (scale2 1 0)
            ]
        ]


countryListScroll : Snippet
countryListScroll =
    class CountryListScroll
        [ boxSizingMixin
        , overflowY auto
        ]


searchInput : Snippet
searchInput =
    class SearchInput
        [ boxSizingMixin
        , backgroundColor (hex "#fff")
        , border zero
        , padding (px 10)
        , margin zero
        , boxShadow5 (px 0) (px 5) (px 10) (px -5) (rgba 0 0 0 0.15)
        , focus [ focusMixin ]
        ]


placeholder : Snippet
placeholder =
    class Placeholder
        [ color (rgba 0 0 0 0.15) ]


dialCode : Snippet
dialCode =
    class DialCode
        [ color (rgba 0 0 0 0.5), marginLeft (em 0.5) ]



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


highlightedMixin : Mixin
highlightedMixin =
    mixin [ backgroundColor (rgba 0 0 0 0.15) ]


buttonMixin : Mixin
buttonMixin =
    mixin
        [ border zero
        , backgroundColor (rgba 0 0 0 0)
        ]


focusMixin : Mixin
focusMixin =
    mixin
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
