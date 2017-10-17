module IntlPhoneInput.Flag.SN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#0b7226", d "M0 0h213v480H0z" ]
                []
            , Svg.path [ fill "#ff0", d "M213 0h214v480H213z" ]
                []
            , Svg.path [ fill "#bc0000", d "M427 0h213v480H427z" ]
                []
            ]
        , Svg.path [ fill "#0b7226", d "M342 219h72l-57 43 21 70-57-44-56 42 20-68-56-43h70l22-71z" ]
            []
        ]
