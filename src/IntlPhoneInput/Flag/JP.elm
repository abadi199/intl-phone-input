module IntlPhoneInput.Flag.JP exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-88 32h640v480H-88z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(88 -32)" ]
            [ Svg.path [ fill "#fff", d "M-128 32h720v480h-720z" ]
                []
            , ellipse [ rx "195", ry "195", transform "translate(-168 9) scale(.76554)", cy "344", cx "523", fill "#d30000" ]
                []
            ]
        ]
