module IntlPhoneInput.Flag.AX exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", viewBox "0 0 640 480", width "100%" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ path [ d "M106.25 0h1133.3v850H106.25z", Svg.Attributes.fillOpacity ".67" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "matrix(.56472 0 0 .56482 -60.002 -.1)" ]
            [ path [ d "M0 0h1300v850H0z", fill "#0053a5" ]
                []
            , g [ fill "#ffce00" ]
                [ path [ d "M400 0h250v850H400z" ]
                    []
                , path [ d "M0 300h1300v250H0z" ]
                    []
                ]
            , g [ fill "#d21034" ]
                [ path [ d "M475 0h100v850H475z" ]
                    []
                , path [ d "M0 375h1300v100H0z" ]
                    []
                ]
            ]
        ]
