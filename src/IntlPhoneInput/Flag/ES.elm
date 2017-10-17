module IntlPhoneInput.Flag.ES exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#c60b1e", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#ffc400", d "M0 120h640v240H0z" ]
            []
        ]
