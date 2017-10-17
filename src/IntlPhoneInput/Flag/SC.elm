module IntlPhoneInput.Flag.SC exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h683v512H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "scale(.9375)" ]
            [ Svg.path [ fill "red", d "M0 0h992v512H0z" ]
                []
            , Svg.path [ d "M0 512l992-171v171H0z", fill "#090" ]
                []
            , Svg.path [ d "M0 512l992-341v170L0 512z", fill "#fff" ]
                []
            , Svg.path [ d "M0 512V0h331L0 512z", fill "#009" ]
                []
            , Svg.path [ d "M0 512L331 0h330L0 512z", fill "#ff0" ]
                []
            ]
        ]
