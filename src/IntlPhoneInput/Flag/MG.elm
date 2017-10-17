module IntlPhoneInput.Flag.MG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ strokeWidth "1pt", fillRule "evenodd" ]
            [ Svg.path [ fill "#ff3319", d "M213.33 0H640v240H213.33z" ]
                []
            , Svg.path [ fill "#00cc28", d "M213.33 240H640v240H213.33z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h213.33v480H0z" ]
                []
            ]
        ]
