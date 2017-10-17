module IntlPhoneInput.Flag.AX exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M106 0h1134v850H106z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "matrix(.56472 0 0 .56482 -60 0)" ]
            [ Svg.path [ d "M0 0h1300v850H0z", fill "#0053a5" ]
                []
            , g [ fill "#ffce00" ]
                [ Svg.path [ d "M400 0h250v850H400z" ]
                    []
                , Svg.path [ d "M0 300h1300v250H0z" ]
                    []
                ]
            , g [ fill "#d21034" ]
                [ Svg.path [ d "M475 0h100v850H475z" ]
                    []
                , Svg.path [ d "M0 375h1300v100H0z" ]
                    []
                ]
            ]
        ]
