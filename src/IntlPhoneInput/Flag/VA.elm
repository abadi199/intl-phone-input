module IntlPhoneInput.Flag.VA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#fff", d "M320 0h320v480H320z" ]
                []
            , Svg.path [ fill "#ffe000", d "M0 0h320v480H0z" ]
                []
            ]
        ]
