module IntlPhoneInput.Flag.MA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#c1272d", d "M640 0H0v480h640z" ]
            []
        , Svg.path [ d "M320 179.452l-35.574 109.496 93.12-67.647H262.453l93.122 67.648z", fill "none", stroke "#006233", strokeWidth "11.704" ]
            []
        ]
