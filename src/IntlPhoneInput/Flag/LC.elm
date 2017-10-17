module IntlPhoneInput.Flag.LC exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#65cfff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ d "M319 42l163 395-323 1L319 42z", fill "#fff" ]
                []
            , Svg.path [ d "M319 97l141 340H181L319 97z" ]
                []
            , Svg.path [ d "M319 240l163 198H159l160-198z", fill "#ffce00" ]
                []
            ]
        ]
