module IntlPhoneInput.Flag.BS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-12 0h640v480H-12z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(12)" ]
            [ Svg.path [ fill "#fff", d "M969 480H-10V2h979z" ]
                []
            , Svg.path [ fill "#ffe900", d "M969 344H-10V143h979z" ]
                []
            , Svg.path [ fill "#08ced6", d "M969 480H-10V321h979zm0-319H-10V2h979z" ]
                []
            , Svg.path [ d "M-11 0c2 0 392 237 392 237L-12 479l1-479z" ]
                []
            ]
        ]
