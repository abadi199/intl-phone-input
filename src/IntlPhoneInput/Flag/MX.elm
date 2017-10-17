module IntlPhoneInput.Flag.MX exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ version "1", viewBox "0 0 640 480", width "100%", height "100%" ]
        [ Svg.path [ d "M427 0h213v480H427z", fill "#ce1126" ]
            []
        , Svg.path [ d "M213 0h214v480H213z", fill "#fff" ]
            []
        , Svg.path [ d "M0 0h213v480H0z", fill "#006847" ]
            []
        ]
