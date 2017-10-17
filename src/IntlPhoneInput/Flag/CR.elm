module IntlPhoneInput.Flag.CR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#0000b4", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 75.428h640v322.285H0z" ]
                []
            , Svg.path [ fill "#d90000", d "M0 157.716h640V315.43H0z" ]
                []
            ]
        ]
