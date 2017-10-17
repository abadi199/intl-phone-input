module IntlPhoneInput.Flag.TD exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#000067", d "M0 0h214v480H0z" ]
                []
            , Svg.path [ fill "red", d "M426 0h214v480H426z" ]
                []
            , Svg.path [ fill "#ff0", d "M214 0h212v480H214z" ]
                []
            ]
        ]
