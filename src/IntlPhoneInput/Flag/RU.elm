module IntlPhoneInput.Flag.RU exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#0039a6", d "M0 160.003h640V480H0z" ]
                []
            , Svg.path [ fill "#d52b1e", d "M0 319.997h640V480H0z" ]
                []
            ]
        ]
