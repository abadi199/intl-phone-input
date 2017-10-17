module IntlPhoneInput.Flag.VN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-85 0h682v512H-85z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(80) scale(.9375)" ]
            [ Svg.path [ fill "#ec0015", d "M-128 0h768v512h-768z" ]
                []
            , Svg.path [ d "M350 381l-90-67-89 68 33-110-89-68 110-1 34-109 35 109h110l-88 69 34 109z", fill "#ff0" ]
                []
            ]
        ]
