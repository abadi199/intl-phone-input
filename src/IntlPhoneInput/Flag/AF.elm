module IntlPhoneInput.Flag.AF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ d "M0 0h640v480H0z" ]
                []
            , Svg.path [ d "M427 0h213v480H427z", fill "#090" ]
                []
            , Svg.path [ d "M213 0h214v480H213z", fill "#bf0000" ]
                []
            ]
        ]
