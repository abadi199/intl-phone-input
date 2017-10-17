module IntlPhoneInput.Flag.DK exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#c60c30", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M206 0h68v480h-68z" ]
            []
        , Svg.path [ fill "#fff", d "M0 206h640v68H0z" ]
            []
        ]
