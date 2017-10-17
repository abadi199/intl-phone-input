module IntlPhoneInput.Flag.CI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#00cd00", d "M426.83 0H640v480H426.83z" ]
                []
            , Svg.path [ fill "#ff9a00", d "M0 0h212.88v480H0z" ]
                []
            , Svg.path [ fill "#fff", d "M212.88 0h213.95v480H212.88z" ]
                []
            ]
        ]
