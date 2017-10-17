module IntlPhoneInput.Flag.SV exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#0f47af", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M0 160h640v160H0z" ]
            []
        ]
