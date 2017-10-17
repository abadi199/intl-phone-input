module IntlPhoneInput.Flag.FI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#003580", d "M0 174.545h640v130.909H0z" ]
            []
        , Svg.path [ fill "#003580", d "M175.455 0h130.909v480H175.455z" ]
            []
        ]
