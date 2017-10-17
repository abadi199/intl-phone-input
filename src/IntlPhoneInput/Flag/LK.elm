module IntlPhoneInput.Flag.LK exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#ffb700", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ d "M27 240l88-213h88v426h-88z", fill "#ff5b00" ]
            []
        , Svg.path [ fill "#005641", d "M27 27h88v426H27z" ]
            []
        , Svg.path [ fill "#8d2029", d "M229 27h387v426H229z" ]
            []
        ]
