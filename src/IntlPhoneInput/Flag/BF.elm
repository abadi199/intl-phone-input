module IntlPhoneInput.Flag.BF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#de0000", d "M640 480H0V0h640z" ]
                []
            , Svg.path [ fill "#35a100", d "M640 480H0V240h640z" ]
                []
            , Svg.path [ fill "#fff300", d "M255 276l-106-72h131l40-117 40 117h131l-106 72 41 117-106-72-106 72" ]
                []
            ]
        ]
