module IntlPhoneInput.Flag.PT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "red", d "M256 0h384v480H256z" ]
            []
        , Svg.path [ fill "#060", d "M0 0h256v480H0z" ]
            []
        ]
