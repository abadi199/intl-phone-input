module IntlPhoneInput.Flag.RS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs [ id "defs4" ]
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillRule "evenodd", d "M60 0h1200v900H60z", id "path7" ]
                    []
                ]
            ]
        , g [ transform "translate(-32) scale(.53333)", Svg.Attributes.clipPath "url(#a)", id "g9" ]
            [ Svg.path [ fill "#fff", d "M0 0h1350v900H0z", id "path11" ]
                []
            , Svg.path [ fill "#0c4076", d "M0 0h1350v600H0z", id "path13" ]
                []
            , Svg.path [ fill "#c6363c", d "M0 0h1350v300H0z", id "path15" ]
                []
            ]
        ]
