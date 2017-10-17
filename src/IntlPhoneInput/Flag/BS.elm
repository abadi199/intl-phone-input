module IntlPhoneInput.Flag.BS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-12 0h640v480H-12z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(12)" ]
            [ Svg.path [ fill "#fff", d "M968.53 480H-10.45V1.77h978.98z" ]
                []
            , Svg.path [ fill "#ffe900", d "M968.53 344.48H-10.45V143.3h978.98z" ]
                []
            , Svg.path [ fill "#08ced6", d "M968.53 480H-10.45V320.59h978.98zm0-318.69H-10.45V1.9h978.98z" ]
                []
            , Svg.path [ d "M-10.913 0c2.173 0 391.71 236.82 391.71 236.82l-392.8 242.38L-10.916 0z" ]
                []
            ]
        ]
