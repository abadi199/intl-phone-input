module IntlPhoneInput.Flag.JO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-118 0h683v512h-683z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(110) scale(.9375)" ]
            [ g [ fillRule "evenodd" ]
                [ Svg.path [ d "M-118 0H906v171H-118z" ]
                    []
                , Svg.path [ fill "#fff", d "M-118 171H906v170H-118z" ]
                    []
                , Svg.path [ fill "#090", d "M-118 341H906v171H-118z" ]
                    []
                , Svg.path [ d "M-118 512l512-256L-118 0v512z", fill "red" ]
                    []
                , Svg.path [ fill "#fff", d "M25 289l5-25H5l23-11-16-20 23 11 5-25 6 25 23-11-16 20 23 11H51l5 25-16-20z" ]
                    []
                ]
            ]
        ]
