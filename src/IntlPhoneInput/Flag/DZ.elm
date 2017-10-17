module IntlPhoneInput.Flag.DZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#fff", d "M320 0h320v480H320z" ]
            []
        , Svg.path [ fill "#006233", d "M0 0h320v480H0z" ]
            []
        , Svg.path [ d "M424 180a120 120 0 1 0 0 120 96 96 0 1 1 0-120m4 60l-108-35 67 92V183l-67 92z", fill "#d21034" ]
            []
        ]
