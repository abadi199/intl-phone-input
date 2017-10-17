module IntlPhoneInput.Flag.TO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#c10000", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h250v200H0z" ]
                []
            , g [ fill "#c10000" ]
                [ Svg.path [ d "M103 31h40v140h-40z" ]
                    []
                , Svg.path [ d "M193 81v40H53V81z" ]
                    []
                ]
            ]
        ]
