module IntlPhoneInput.Flag.SL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#0000cd", d "M0 320h640v160H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 161h640v159H0z" ]
                []
            , Svg.path [ fill "#00cd00", d "M0 0h640v161H0z" ]
                []
            ]
        ]
