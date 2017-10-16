module IntlPhoneInput.Flag.SE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ path [ fillOpacity ".67", d "M-53.421 0h682.67v512h-682.67z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(50.082) scale(.9375)" ]
            [ g [ fillRule "evenodd", strokeWidth "1pt" ]
                [ path [ fill "#006aa7", d "M-121.103.302h256V205.1h-256zM-121.103 307.178h256v204.8h-256z" ]
                    []
                , path [ fill "#fecc00", d "M-121.103 204.984h256v102.4h-256z" ]
                    []
                , path [ fill "#fecc00", d "M133.843.01h102.4v511.997h-102.4z" ]
                    []
                , path [ fill "#fecc00", d "M232.995 205.013h460.798v102.4H232.995z" ]
                    []
                , path [ fill "#006aa7", d "M236.155 307.208h460.797v204.799H236.155zM236.155.302h460.797V205.1H236.155z" ]
                    []
                ]
            ]
        ]
