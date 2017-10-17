module IntlPhoneInput.Flag.ME exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#d3ae3b", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#c40308", d "M24 24h592v432H24z" ]
            []
        , Svg.path [ d "M361 238c0-10 5-17 5-17l-13-14c-12 4-23 5-33-1-10 6-21 5-33 1l-13 14s5 7 5 17-2 17-3 22-2 15 0 21c3 7 6 12 17 17s17 7 21 11l6 6 6-6c4-4 10-6 21-11s14-10 17-17c2-6 1-16 0-21s-3-12-3-22z", fill "#d4af3a" ]
            []
        ]
