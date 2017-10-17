module IntlPhoneInput.Flag.LA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#e90012", d "M-40 0h720v480H-40z" ]
                []
            , Svg.path [ fill "#003dd2", d "M-40 119.26h720v241.48H-40z" ]
                []
            , Svg.path [ d "M423.42 239.998a103.419 103.419 0 1 1-206.838 0 103.419 103.419 0 1 1 206.837 0z", fill "#fff" ]
                []
            ]
        ]
