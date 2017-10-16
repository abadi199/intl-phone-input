module IntlPhoneInput.Flag.SD exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h682.67v512H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "scale(.9375)", strokeWidth "1pt" ]
            [ Svg.path [ d "M0 341.32h1024V512H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 170.64h1024v170.68H0z" ]
                []
            , Svg.path [ fill "red", d "M0 0h1024.8v170.68H0z" ]
                []
            , Svg.path [ d "M0 0v512l341.32-256L0 0z", fill "#009a00" ]
                []
            ]
        ]
