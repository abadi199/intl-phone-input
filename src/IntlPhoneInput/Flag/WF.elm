module IntlPhoneInput.Flag.WF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#fff", d "M0-.001h640v480H0z" ]
                []
            , Svg.path [ fill "#00267f", d "M0-.001h213.337v480H0z" ]
                []
            , Svg.path [ fill "#f31830", d "M426.662-.001H640v480H426.662z" ]
                []
            ]
        ]