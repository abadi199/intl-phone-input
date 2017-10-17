module IntlPhoneInput.Flag.EE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ rect [ rx "0", ry "0", height "478", width "100%" ]
                []
            , rect [ rx "0", ry "0", height "159", width "100%", y "321", fill "#fff" ]
                []
            , Svg.path [ fill "#1291ff", d "M0 0h640v159H0z" ]
                []
            ]
        ]
