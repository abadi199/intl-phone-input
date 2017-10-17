module IntlPhoneInput.Flag.PS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-118 0h682.67v512H-118z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(110.63) scale(.9375)" ]
            [ g [ fillRule "evenodd", strokeWidth "1pt" ]
                [ Svg.path [ d "M-246 0H778.002v170.667H-246z" ]
                    []
                , Svg.path [ fill "#fff", d "M-246 170.667H778.002v170.667H-246z" ]
                    []
                , Svg.path [ fill "#090", d "M-246 341.334H778.002v170.667H-246z" ]
                    []
                , Svg.path [ d "M-246 512.001l512.001-256L-246 0v512.001z", fill "red" ]
                    []
                ]
            ]
        ]
