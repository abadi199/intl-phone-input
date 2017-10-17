module IntlPhoneInput.Flag.ID exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#e70011", d "M0 0h640v249H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 240h640v240H0z" ]
                []
            ]
        ]
