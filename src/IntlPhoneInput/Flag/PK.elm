module IntlPhoneInput.Flag.PK exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-52 0h682v512H-52z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(49) scale(.9375)" ]
            [ Svg.path [ fill "#0c590b", d "M-95 0h768v512H-95z" ]
                []
            , Svg.path [ fill "#fff", d "M-95 0H98v512H-95z" ]
                []
            , g [ fill "#fff" ]
                [ Svg.path [ d "M404 225l-31-6-17 27-3-32-31-7 29-13-3-31 21 23 30-12-16 27 21 24z" ]
                    []
                , Svg.path [ d "M415 306c-27 61-100 88-161 59a122 122 0 0 1 12-226l-12 11a112 112 0 0 0 161 156z" ]
                    []
                ]
            ]
        ]
