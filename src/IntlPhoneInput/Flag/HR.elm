module IntlPhoneInput.Flag.HR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#171796", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M0 0h640v320H0z" ]
            []
        , Svg.path [ fill "red", d "M0 0h640v160H0z" ]
            []
        ]
