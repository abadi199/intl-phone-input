module IntlPhoneInput.Flag.UA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#ffd500", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#005bbb", d "M0 0h640v240H0z" ]
                []
            ]
        ]
