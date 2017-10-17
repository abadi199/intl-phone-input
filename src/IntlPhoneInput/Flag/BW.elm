module IntlPhoneInput.Flag.BW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#00cbff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 160h640v160H0z" ]
                []
            , Svg.path [ d "M0 186h640v108H0z" ]
                []
            ]
        ]
