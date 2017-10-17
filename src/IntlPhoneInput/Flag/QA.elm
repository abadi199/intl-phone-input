module IntlPhoneInput.Flag.QA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#8d1b3d", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ d "M0 0v480h158l98-27-98-26 98-27-98-27 98-26-98-27 98-27-98-26 98-27-98-27 98-26-98-27 98-27-98-26 98-27-98-27 98-26-98-27H0z", fill "#fff" ]
            []
        ]
