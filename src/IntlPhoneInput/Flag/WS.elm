module IntlPhoneInput.Flag.WS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "red", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#00006b", d "M0 0h314v157H0z" ]
                []
            , Svg.path [ d "M163 144l-13-8-12 9 4-15-11-10 14-1 5-14 6 15h14l-11 10zm-2-99l-10-7-10 7 3-12-9-8 11-1 5-11 4 11 12 1-9 8zm-44 35l-10-6-10 6 3-11-9-8 11-1 5-11 4 11 12 1-9 8zm88-8l-9-6-9 7 2-12-8-7h11l4-11 4 11h11l-9 8zm-26 27l-6-4-7 4 2-8-5-5h7l3-7 2 7h8l-6 5z", fill "#fff" ]
                []
            ]
        ]
