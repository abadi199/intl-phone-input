module IntlPhoneInput.Flag.DE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#ffce00", d "M0 320h640v160H0z" ]
            []
        , Svg.path [ d "M0 0h640v160H0z" ]
            []
        , Svg.path [ fill "#d00", d "M0 160h640v160H0z" ]
            []
        ]
