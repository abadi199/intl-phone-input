module IntlPhoneInput.Flag.LU exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#00a1de", d "M0 240h640v240H0z" ]
            []
        , Svg.path [ fill "#ed2939", d "M0 0h640v240H0z" ]
            []
        , Svg.path [ fill "#fff", d "M0 160h640v160H0z" ]
            []
        ]
