module IntlPhoneInput.Flag.MV exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#d21034", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#007e3a", d "M120 120h400v240H120z" ]
            []
        , circle [ r "80", cy "240", cx "350", fill "#fff" ]
            []
        , circle [ r "80", cy "240", cx "380", fill "#007e3a" ]
            []
        ]
