module IntlPhoneInput.Flag.PW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-70.28 0h640v480h-640z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(70.28)", strokeWidth "1pt" ]
            [ Svg.path [ fill "#4aadd6", d "M-173.44 0h846.32v480h-846.32z" ]
                []
            , Svg.path [ d "M335.633 232.117a135.876 130.111 0 1 1-271.752 0 135.876 130.111 0 1 1 271.752 0z", fill "#ffde00" ]
                []
            ]
        ]
