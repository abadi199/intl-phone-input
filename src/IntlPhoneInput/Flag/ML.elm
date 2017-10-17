module IntlPhoneInput.Flag.ML exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "red", d "M425.75 0H640v480H425.75z" ]
                []
            , Svg.path [ fill "#009a00", d "M0 0h212.88v480H0z" ]
                []
            , Svg.path [ fill "#ff0", d "M212.88 0h213.95v480H212.88z" ]
                []
            ]
        ]
