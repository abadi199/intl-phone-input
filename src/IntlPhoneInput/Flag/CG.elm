module IntlPhoneInput.Flag.CG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-79.458 32h640v480h-640z" ]
                    []
                ]
            ]
        , g [ strokeWidth "1pt", fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(79.458 -32)" ]
            [ Svg.path [ fill "#ff0", d "M-119.46 32h720v480h-720z" ]
                []
            , Svg.path [ d "M-119.46 32v480l480-480h-480z", fill "#00ca00" ]
                []
            , Svg.path [ d "M120.54 512h480V32l-480 480z", fill "red" ]
                []
            ]
        ]
