module IntlPhoneInput.Flag.AT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#fff", d "M640 480H0V0h640z" ]
                []
            , Svg.path [ fill "#df0000", d "M640 480H0V320h640zm0-320H0V0h640z" ]
                []
            ]
        ]
