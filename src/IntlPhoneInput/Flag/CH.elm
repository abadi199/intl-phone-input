module IntlPhoneInput.Flag.CH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#d52b1e", d "M0 0h640v480H0z" ]
                []
            , g [ fill "#fff" ]
                [ Svg.path [ d "M170 195h300v90H170z" ]
                    []
                , Svg.path [ d "M275 90h90v300h-90z" ]
                    []
                ]
            ]
        ]
