module IntlPhoneInput.Flag.AS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#006", d "M-374-16H650v512H-374z" ]
                []
            , Svg.path [ d "M-374 240L650 496V-16L-374 240z", fillRule "evenodd", fill "#bd1021" ]
                []
            , Svg.path [ d "M650 11v458l-914-229L650 11z", fillRule "evenodd", fill "#fff" ]
                []
            ]
        ]
