module IntlPhoneInput.Flag.CG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-79 32h640v480H-79z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(79 -32)" ]
            [ Svg.path [ fill "#ff0", d "M-119 32h720v480h-720z" ]
                []
            , Svg.path [ d "M-119 32v480L361 32h-480z", fill "#00ca00" ]
                []
            , Svg.path [ d "M121 512h480V32L121 512z", fill "red" ]
                []
            ]
        ]
