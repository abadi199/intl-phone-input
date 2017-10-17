module IntlPhoneInput.Flag.IE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#009A49", d "M0 0h213v480H0z" ]
                []
            , Svg.path [ fill "#FF7900", d "M427 0h213v480H427z" ]
                []
            ]
        ]
