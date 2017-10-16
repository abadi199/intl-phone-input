module IntlPhoneInput.Flag.SR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#377e3f", d "M.1 0h640v480H.1z" ]
            []
        , Svg.path [ fill "#fff", d "M.1 96h640v288H.1z" ]
            []
        , Svg.path [ fill "#b40a2d", d "M.1 144h640v192H.1z" ]
            []
        , Svg.path [ d "M320 153.167l56.427 173.666-147.73-107.33h182.605l-147.73 107.33z", fill "#ecc81d" ]
            []
        ]
