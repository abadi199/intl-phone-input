module IntlPhoneInput.Flag.BB exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#00267f", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#ffc726", d "M213 0h214v480H213z" ]
            []
        , Svg.path [ id "a", d "M320 136c-7 18-14 38-29 53l18-3v80l-23 3-1-3c-2-24-8-45-14-67-1-3-9-14-3-12 1 0 10 4 8 2a85 85 0 0 0-46-24c-2 0-2 1-1 2 22 35 41 76 41 124 9 0 30-5 39-5v56h11l2-156z" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", transform "matrix(-1 0 0 1 640 0)" ]
            []
        ]
