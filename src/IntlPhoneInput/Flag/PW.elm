module IntlPhoneInput.Flag.PW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-70 0h640v480H-70z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(70)" ]
            [ Svg.path [ fill "#4aadd6", d "M-173 0h846v480h-846z" ]
                []
            , Svg.path [ d "M336 232a136 130 0 1 1-272 0 136 130 0 1 1 272 0z", fill "#ffde00" ]
                []
            ]
        ]
