module IntlPhoneInput.Flag.GL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ d "M0 0h640v480H0z", fill "#fff" ]
            []
        , Svg.path [ d "M0 240h640v240H0zm80 0c.014 88.356 71.644 159.975 160 159.975S399.986 328.355 400 240c-.014-88.356-71.644-159.975-160-159.975S80.014 151.645 80 240", fill "#d00c33" ]
            []
        ]
