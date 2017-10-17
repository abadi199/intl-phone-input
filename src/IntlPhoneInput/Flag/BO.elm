module IntlPhoneInput.Flag.BO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ width "100%", height "100%", viewBox "0 0 1100 750" ]
        [ rect [ fill "#007934", width "1100", height "750" ]
            []
        , rect [ fill "#D52B1E", width "1100", height "500" ]
            []
        , rect [ fill "#F9E300", width "1100", height "250" ]
            []
        ]
