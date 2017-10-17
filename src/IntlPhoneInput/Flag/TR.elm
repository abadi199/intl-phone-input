module IntlPhoneInput.Flag.TR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#f31930", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ d "M407 247c0 67-55 120-122 120s-122-53-122-120 55-119 122-119 122 53 122 119z", fill "#fff" ]
                []
            , Svg.path [ d "M413 247a97 97 0 0 1-195 0c0-53 44-95 98-95s97 42 97 95z", fill "#f31830" ]
                []
            , Svg.path [ d "M431 191l-1 45-42 11 41 15-1 40 27-32 40 14-23-34 28-34-43 12-26-37z", fill "#fff" ]
                []
            ]
        ]
