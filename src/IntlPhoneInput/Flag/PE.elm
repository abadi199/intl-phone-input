module IntlPhoneInput.Flag.PE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#d91023", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M213 0h214v480H213z" ]
            []
        ]
