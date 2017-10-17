module IntlPhoneInput.Flag.YE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v473H0z" ]
                []
            , Svg.path [ fill "#f10600", d "M0 0h640v157H0z" ]
                []
            , Svg.path [ d "M0 323h640v157H0z" ]
                []
            ]
        ]
