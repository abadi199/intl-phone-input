module IntlPhoneInput.Flag.CI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#00cd00", d "M427 0h213v480H427z" ]
                []
            , Svg.path [ fill "#ff9a00", d "M0 0h213v480H0z" ]
                []
            , Svg.path [ fill "#fff", d "M213 0h214v480H213z" ]
                []
            ]
        ]
