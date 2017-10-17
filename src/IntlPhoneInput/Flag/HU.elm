module IntlPhoneInput.Flag.HU exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#fff", d "M640.006 479.994H0V0h640.006z" ]
                []
            , Svg.path [ fill "#388d00", d "M640.006 479.994H0V319.996h640.006z" ]
                []
            , Svg.path [ fill "#d43516", d "M640.006 160.127H0V.13h640.006z" ]
                []
            ]
        ]
