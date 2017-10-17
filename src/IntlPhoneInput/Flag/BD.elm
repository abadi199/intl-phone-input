module IntlPhoneInput.Flag.BD exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#006a4e", d "M0 0h640v480H0z" ]
            []
        , circle [ cx "280", cy "240", r "160", fill "#f42a41" ]
            []
        ]
