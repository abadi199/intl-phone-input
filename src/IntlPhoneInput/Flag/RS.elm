module IntlPhoneInput.Flag.RS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillRule "evenodd", d "M60 0h1200v900H60z" ]
                    []
                ]
            ]
        , g [ transform "translate(-32) scale(.53333)", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#fff", d "M0 0h1350v900H0z" ]
                []
            , Svg.path [ fill "#0c4076", d "M0 0h1350v600H0z" ]
                []
            , Svg.path [ fill "#c6363c", d "M0 0h1350v300H0z" ]
                []
            ]
        ]
