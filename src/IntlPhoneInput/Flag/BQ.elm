module IntlPhoneInput.Flag.BQ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ d "M0 0h640v480H0z", fill "#21468b" ]
            []
        , Svg.path [ d "M0 0h640v320H0z", fill "#fff" ]
            []
        , Svg.path [ d "M0 0h640v160H0z", fill "#ae1c28" ]
            []
        ]
