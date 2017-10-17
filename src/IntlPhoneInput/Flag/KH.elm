module IntlPhoneInput.Flag.KH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#032ea1", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#e00025", d "M0 120h640v240H0z" ]
            []
        ]
