module IntlPhoneInput.Flag.SC exposing (flag)

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
            [ Svg.path [ fill "red", d "M0 0h992.13v512H0z" ]
                []
            , Svg.path [ d "M0 512l992.12-170.67V512H0z", fill "#090" ]
                []
            , Svg.path [ d "M0 512l992.12-341.33v170.67L0 512z", fill "#fff" ]
                []
            , Svg.path [ d "M0 512V0h330.71L0 512z", fill "#009" ]
                []
            , Svg.path [ d "M0 512L330.71 0h330.71L0 512z", fill "#ff0" ]
                []
            ]
        ]
