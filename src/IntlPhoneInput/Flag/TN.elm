module IntlPhoneInput.Flag.TN exposing (flag)

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
            [ Svg.path [ fill "#e70013", d "M-128 0h768v512h-768z" ]
                []
            , Svg.path [ d "M386 256a129 129 0 1 1-258 0 129 129 0 0 1 258 0z", fill "#fff" ]
                []
            , Svg.path [ d "M257 341a86 86 0 0 1 0-171c11 0 25 3 34 10-63 2-78 55-78 76s10 70 78 77c-8 5-23 8-34 8z", fill "#e70013" ]
                []
            , Svg.path [ fill "#e70013", d "M332 292l-39-14-25 32 1-41-39-15 40-11 2-42 23 35 40-11-26 32z" ]
                []
            ]
        ]
