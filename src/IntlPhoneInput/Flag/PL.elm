module IntlPhoneInput.Flag.PL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#e9e8e7", d "M640 480H0V0h640z" ]
                []
            , Svg.path [ fill "#d4213d", d "M640 480H0V240h640z" ]
                []
            ]
        ]
