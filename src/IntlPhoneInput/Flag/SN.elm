module IntlPhoneInput.Flag.SN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ fill "#0b7226", d "M-.006 0h213.328v480H-.006z" ]
                []
            , Svg.path [ fill "#ff0", d "M213.322 0H426.65v480H213.322z" ]
                []
            , Svg.path [ fill "#bc0000", d "M426.65 0h213.328v480H426.65z" ]
                []
            ]
        , Svg.path [ fill "#0b7226", d "M342.047 218.852h71.73l-56.627 43.556 20.762 69.314-56.627-43.569-56.627 41.588 20.762-67.333-56.627-43.556h69.844l22.648-71.295z" ]
            []
        ]
