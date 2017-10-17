module IntlPhoneInput.Flag.DK exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#c60c30", d "M0 0h640.1v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M205.714 0h68.57v480h-68.57z" ]
            []
        , Svg.path [ fill "#fff", d "M0 205.714h640.1v68.57H0z" ]
            []
        ]
