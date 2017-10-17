module IntlPhoneInput.Flag.SS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ d "M0 336h640v144H0z", fill "#078930" ]
            []
        , Svg.path [ d "M0 144h640v192H0z", fill "#fff" ]
            []
        , Svg.path [ d "M0 0h640v144H0z" ]
            []
        , Svg.path [ d "M0 168h640v144H0z", fill "#da121a" ]
            []
        , Svg.path [ d "M0 0l416 240L0 480z", fill "#0f47af" ]
            []
        , Svg.path [ d "M201 195L62 240l139 45-86-118v146z", fill "#fcdd09" ]
            []
        ]
