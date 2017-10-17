module IntlPhoneInput.Flag.IE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#fff", d "M0 0h639.995v480.004H0z" ]
                []
            , Svg.path [ fill "#009A49", d "M0 0h213.334v480.004H0z" ]
                []
            , Svg.path [ fill "#FF7900", d "M426.668 0h213.334v480.004H426.668z" ]
                []
            ]
        ]
