module IntlPhoneInput.Flag.GF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#078930", d "M0 0h640v480z" ]
            []
        , Svg.path [ fill "#fcdd09", d "M0 0l640 480H0z" ]
            []
        , Svg.path [ fill "#da121a", d "M252.37 218.025h135.26L278.203 297.53 320 168.89l41.798 128.64z" ]
            []
        ]
