module IntlPhoneInput.Flag.SY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ rect [ y "160", width "100%", height "160", ry "0", rx "0", fill "#fff", fillRule "evenodd" ]
            []
        , rect [ y "320", width "100%", height "160", ry "0", rx "0", fillRule "evenodd" ]
            []
        , Svg.path [ d "M0 0h640v160H0z", fill "red", fillRule "evenodd" ]
            []
        , Svg.path [ d "M202 281l-29-21-29 21 11-34-29-21h36l11-35 11 34h35l-28 22 11 34zm308 0l-29-21-29 21 11-34-29-21h35l11-35 12 34h35l-28 22 11 34z", fill "#090", fillRule "evenodd" ]
            []
        ]
