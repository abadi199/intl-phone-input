module IntlPhoneInput.Flag.GN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "red", d "M0 0h213v480H0z" ]
                []
            , Svg.path [ fill "#ff0", d "M213 0h214v480H213z" ]
                []
            , Svg.path [ fill "#090", d "M427 0h213v480H427z" ]
                []
            ]
        ]
