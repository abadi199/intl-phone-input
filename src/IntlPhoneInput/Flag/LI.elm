module IntlPhoneInput.Flag.LI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#002b7f", d "M0 0h640v240H0z" ]
            []
        , Svg.path [ fill "#ce1126", d "M0 240h640v240H0z" ]
            []
        ]
