module IntlPhoneInput.Flag.SX exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h683v512H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "scale(.9375)", fillRule "evenodd" ]
            [ Svg.path [ d "M0 0h768v256H341L0 0z", fill "#ed2939" ]
                []
            , Svg.path [ d "M0 512h768V256H341L0 512z", fill "#002395" ]
                []
            , Svg.path [ d "M0 0l341 256L0 512V0z", fill "#fff" ]
                []
            ]
        ]
