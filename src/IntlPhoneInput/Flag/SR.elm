module IntlPhoneInput.Flag.SR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#377e3f", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M0 96h640v288H0z" ]
            []
        , Svg.path [ fill "#b40a2d", d "M0 144h640v192H0z" ]
            []
        , Svg.path [ d "M320 153l56 174-147-107h182L264 327z", fill "#ecc81d" ]
            []
        ]
