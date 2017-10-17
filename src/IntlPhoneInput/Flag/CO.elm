module IntlPhoneInput.Flag.CO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#ffe800", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#00148e", d "M0 240h640v240H0z" ]
                []
            , Svg.path [ fill "#da0010", d "M0 360h640v120H0z" ]
                []
            ]
        ]
