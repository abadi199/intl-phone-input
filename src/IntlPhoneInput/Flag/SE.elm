module IntlPhoneInput.Flag.SE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-53 0h682v512H-53z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(50) scale(.9375)" ]
            [ g [ fillRule "evenodd" ]
                [ Svg.path [ fill "#006aa7", d "M-121 0h256v205h-256zm0 307h256v205h-256z" ]
                    []
                , Svg.path [ fill "#fecc00", d "M-121 205h256v102h-256z" ]
                    []
                , Svg.path [ fill "#fecc00", d "M134 0h102v512H134z" ]
                    []
                , Svg.path [ fill "#fecc00", d "M233 205h461v102H233z" ]
                    []
                , Svg.path [ fill "#006aa7", d "M236 307h461v205H236zm0-307h461v205H236z" ]
                    []
                ]
            ]
        ]
