module IntlPhoneInput.Flag.CH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#d52b1e", d "M0 0h640v480H0z" ]
                []
            , g [ fill "#fff" ]
                [ Svg.path [ d "M170 194.997h299.996v89.997H170z" ]
                    []
                , Svg.path [ d "M275 89.997h89.996v299.996H275z" ]
                    []
                ]
            ]
        ]
