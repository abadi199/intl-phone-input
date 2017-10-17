module IntlPhoneInput.Flag.GL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ d "M0 0h640v480H0z", fill "#fff" ]
            []
        , Svg.path [ d "M0 240h640v240H0zm80 0a160 160 0 1 0 320 0 160 160 0 0 0-320 0", fill "#d00c33" ]
            []
        ]
