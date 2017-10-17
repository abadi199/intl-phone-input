module IntlPhoneInput.Flag.MG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#ff3319", d "M213 0h427v240H213z" ]
                []
            , Svg.path [ fill "#00cc28", d "M213 240h427v240H213z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h213v480H0z" ]
                []
            ]
        ]
