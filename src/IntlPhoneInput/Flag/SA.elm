module IntlPhoneInput.Flag.SA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-85 0h682v512H-85z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "translate(80) scale(.9375)" ]
            [ Svg.path [ fill "#199d00", d "M-128 0h768v512h-768z" ]
                []
            , Svg.path [ d "M355 375l28 1c1 1 0 5-1 4h-8c0-3-7-2-7 0h-12v-5z", fill "#209000" ]
                []
            ]
        ]
