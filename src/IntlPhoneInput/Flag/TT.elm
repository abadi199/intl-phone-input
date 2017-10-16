module IntlPhoneInput.Flag.TT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ d "M463.663 480L.05 1.003 0 479.747l463.663.253zM176.337 0L639.95 478.997 640 .253 176.337 0z", fillRule "evenodd", fill "#e00000" ]
            []
        , Svg.path [ d "M27.74.23h118.597l468.176 479.315h-122.35L27.738.229z", fillRule "evenodd" ]
            []
        ]
