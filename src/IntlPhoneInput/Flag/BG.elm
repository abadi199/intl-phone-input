module IntlPhoneInput.Flag.BG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#d62612", d "M0 320h640v160H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h640v160H0z" ]
                []
            , Svg.path [ fill "#00966e", d "M0 160h640v160H0z" ]
                []
            ]
        ]
