module IntlPhoneInput.Flag.SJ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#ef2b2d", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M180 0h120v480H180z" ]
            []
        , Svg.path [ fill "#fff", d "M0 180h640v120H0z" ]
            []
        , Svg.path [ fill "#002868", d "M210 0h60v480h-60z" ]
            []
        , Svg.path [ fill "#002868", d "M0 210h640v60H0z" ]
            []
        ]
