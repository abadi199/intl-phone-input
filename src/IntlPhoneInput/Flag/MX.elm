module IntlPhoneInput.Flag.MX exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ viewBox "0 0 640 480", width "100%", height "100%" ]
        [ Svg.path [ d "M426.7 0H640v480H426.7z", fill "#ce1126" ]
            []
        , Svg.path [ d "M213.3 0h213.4v480H213.3z", fill "#fff" ]
            []
        , Svg.path [ d "M0 0h213.3v480H0z", fill "#006847" ]
            []
        ]
