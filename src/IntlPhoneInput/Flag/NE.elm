module IntlPhoneInput.Flag.NE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#0db02b", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M0 0h640v320H0z" ]
            []
        , Svg.path [ fill "#e05206", d "M0 0h640v160H0z" ]
            []
        , circle [ cx "320", cy "240", r "68", fill "#e05206" ]
            []
        ]
