module IntlPhoneInput.Flag.GA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#ffe700", d "M640 480H0V0h640z" ]
                []
            , Svg.path [ fill "#36a100", d "M640 160H0V0h640z" ]
                []
            , Svg.path [ fill "#006dbc", d "M640 480H0V320h640z" ]
                []
            ]
        ]
