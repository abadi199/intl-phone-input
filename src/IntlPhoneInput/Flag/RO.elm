module IntlPhoneInput.Flag.RO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#00319c", d "M0 0h213.333v480H0z" ]
                []
            , Svg.path [ fill "#ffde00", d "M213.333 0h213.333v480H213.333z" ]
                []
            , Svg.path [ fill "#de2110", d "M426.666 0H640v480H426.666z" ]
                []
            ]
        ]
