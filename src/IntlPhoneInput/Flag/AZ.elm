module IntlPhoneInput.Flag.AZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#3f9c35", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#ed2939", d "M0 0h640v320H0z" ]
            []
        , Svg.path [ fill "#00b9e4", d "M0 0h640v160H0z" ]
            []
        , circle [ cx "304", cy "240", r "72", fill "#fff" ]
            []
        , circle [ cx "320", cy "240", r "60", fill "#ed2939" ]
            []
        , Svg.path [ d "M384 200l8 22 20-10-10 20 22 8-22 8 10 20-20-10-8 22-8-22-20 10 10-20-22-8 22-8-10-20 20 10 8-22z", fill "#fff" ]
            []
        ]
