module IntlPhoneInput.Flag.MC exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#f31830", d "M0 0h640v240H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 240h640v240H0z" ]
                []
            ]
        ]