module IntlPhoneInput.Flag.NG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#fff", d "M0 0h639.98v479.998H0z" ]
                []
            , Svg.path [ fill "#008753", d "M426.654 0H639.98v479.998H426.654zM0 0h213.327v479.998H0z" ]
                []
            ]
        ]
