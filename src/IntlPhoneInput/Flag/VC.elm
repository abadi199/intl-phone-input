module IntlPhoneInput.Flag.VC exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#f4f100", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#199a00", d "M490 0h150v480H490z" ]
                []
            , Svg.path [ fill "#0058aa", d "M0 0h150v480H0z" ]
                []
            , Svg.path [ d "M259 130l-46 71 45 75 43-74-42-72zm122 0l-47 71 45 75 44-74-42-72zm-62 97l-46 72 45 74 43-74-42-72z", fill "#199a00" ]
                []
            ]
        ]
