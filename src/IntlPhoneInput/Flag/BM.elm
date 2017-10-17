module IntlPhoneInput.Flag.BM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#cf142b", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#00247d", d "M0 0h320v160H0z" ]
            []
        , Svg.path [ d "M0 0v18l284 142h36v-18L36 0H0zm320 0v18L36 160H0v-18L284 0h36z", fill "#fff" ]
            []
        , Svg.path [ d "M133 0v160h54V0h-54zM0 53v54h320V53H0z", fill "#fff" ]
            []
        , Svg.path [ d "M0 64v32h320V64H0zM144 0v160h32V0h-32zM0 160l107-53h24L24 160H0zM0 0l107 53H83L0 12V0zm189 53L296 0h24L213 53h-24zm131 107l-107-53h24l83 41v12z", fill "#cf142b" ]
            []
        ]
