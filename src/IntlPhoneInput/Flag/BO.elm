module IntlPhoneInput.Flag.BO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#007934", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#ffe000", d "M0 0h640v320H0z" ]
            []
        , Svg.path [ fill "#d52b1e", d "M0 0h640v160H0z" ]
            []
        , use [ height "330", width "330", transform "rotate(23 -418 956) scale(.14262)", fill "#fcbf49" ]
            []
        , use [ height "330", width "330", transform "matrix(-.14262 0 0 .14262 334 233)", fill "#fcbf49" ]
            []
        ]
