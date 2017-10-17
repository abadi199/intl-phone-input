module IntlPhoneInput.Flag.EG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ d "M0 320h640v160H0z" ]
            []
        , Svg.path [ fill "#ce1126", d "M0 0h640v160H0z" ]
            []
        ]
