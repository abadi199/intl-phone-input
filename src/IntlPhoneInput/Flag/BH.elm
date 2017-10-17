module IntlPhoneInput.Flag.BH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#e10011", d "M-32 0h720v480H-32z" ]
                []
            , Svg.path [ d "M114 480H-32V0h146l94 30-94 30 94 30-94 30 94 30-94 30 94 30-94 30 94 30-94 30 94 30-94 30 94 30-94 30 94 30-94 30", fill "#fff" ]
                []
            ]
        ]
