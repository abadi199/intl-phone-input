module IntlPhoneInput.Flag.LV exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v480.003H0z" ]
                []
            , Svg.path [ fill "#ab231d", d "M0 0h640v192.001H0zM0 288.002h640v192.001H0z" ]
                []
            ]
        ]
