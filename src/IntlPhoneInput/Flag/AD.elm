module IntlPhoneInput.Flag.AD exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#d0103a", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fedf00", d "M0 0h435v480H0z" ]
            []
        , Svg.path [ fill "#0018a8", d "M0 0h205v480H0z" ]
            []
        ]
