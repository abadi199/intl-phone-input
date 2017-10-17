module IntlPhoneInput.Flag.LA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#e90012", d "M-40 0h720v480H-40z" ]
                []
            , Svg.path [ fill "#003dd2", d "M-40 119h720v242H-40z" ]
                []
            , Svg.path [ d "M423 240a103 103 0 1 1-206 0 103 103 0 1 1 206 0z", fill "#fff" ]
                []
            ]
        ]
