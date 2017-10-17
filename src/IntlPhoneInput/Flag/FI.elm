module IntlPhoneInput.Flag.FI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#003580", d "M0 175h640v130H0z" ]
            []
        , Svg.path [ fill "#003580", d "M175 0h131v480H175z" ]
            []
        ]
