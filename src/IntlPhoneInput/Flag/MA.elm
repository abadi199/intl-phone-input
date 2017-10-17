module IntlPhoneInput.Flag.MA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#c1272d", d "M640 0H0v480h640z" ]
            []
        , Svg.path [ d "M320 179l-36 110 94-68H262l94 68z", fill "none", stroke "#006233", strokeWidth "12" ]
            []
        ]
