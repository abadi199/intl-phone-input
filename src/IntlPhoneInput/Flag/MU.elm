module IntlPhoneInput.Flag.MU exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ d "M0 360h640v120H0z", fill "#00a04d" ]
                []
            , Svg.path [ d "M0 120h640v120H0z", fill "#151f6d" ]
                []
            , Svg.path [ d "M0 0h640v120H0z", fill "#ee2737" ]
                []
            , Svg.path [ d "M0 240h640v120H0z", fill "#ffcd00" ]
                []
            ]
        ]
