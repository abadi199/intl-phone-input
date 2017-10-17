module IntlPhoneInput.Flag.SM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#19b6ef", d "M0 240h640v240H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h640v240H0z" ]
                []
            ]
        ]
