module IntlPhoneInput.Flag.YE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#fff", d "M0 0h640V472.79H0z" ]
                []
            , Svg.path [ fill "#f10600", d "M0 0h640v157.374H0z" ]
                []
            , Svg.path [ d "M0 322.624h640v157.374H0z" ]
                []
            ]
        ]
