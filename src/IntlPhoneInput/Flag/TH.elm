module IntlPhoneInput.Flag.TH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#001b9a", d "M0 163h640v160H0z" ]
                []
            , Svg.path [ fill "#e70000", d "M0 0h640v83H0zm0 400h640v80H0z" ]
                []
            ]
        ]
