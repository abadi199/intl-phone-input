module IntlPhoneInput.Flag.GF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#078930", d "M0 0h640v480z" ]
            []
        , Svg.path [ fill "#fcdd09", d "M0 0l640 480H0z" ]
            []
        , Svg.path [ fill "#da121a", d "M252 218h136l-110 80 42-129 42 129z" ]
            []
        ]
