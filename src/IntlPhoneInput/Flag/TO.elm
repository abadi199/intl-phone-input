module IntlPhoneInput.Flag.TO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#c10000", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h249.954v200.321H0z" ]
                []
            , g [ fill "#c10000" ]
                [ Svg.path [ d "M102.854 31.24h39.84v139.54h-39.84z" ]
                    []
                , Svg.path [ d "M192.55 81.086v39.84H53.01v-39.84z" ]
                    []
                ]
            ]
        ]
