module IntlPhoneInput.Flag.BF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#de0000", d "M640.003 479.578H.378V0h639.625z" ]
                []
            , Svg.path [ fill "#35a100", d "M639.628 480H.003V240.216h639.625z" ]
                []
            , Svg.path [ fill "#fff300", d "M254.612 276.188l-106.066-72.434 131.043.122 40.386-117.322 40.388 117.322 131.043-.087-106.085 72.398 40.59 117.27-105.954-72.573-105.955 72.556" ]
                []
            ]
        ]
