module IntlPhoneInput.Flag.JP exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-88.001 32h640v480h-640z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(88.001 -32)", strokeWidth "1pt" ]
            [ Svg.path [ fill "#fff", d "M-128 32h720v480h-720z" ]
                []
            , ellipse [ rx "194.93", ry "194.93", transform "translate(-168.44 8.618) scale(.76554)", cy "344.05", cx "523.08", fill "#d30000" ]
                []
            ]
        ]
