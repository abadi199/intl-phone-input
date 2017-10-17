module IntlPhoneInput.Flag.SG exposing (flag)

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
            [ Svg.path [ fill "#fff", d "M-20 0h720v480H-20z" ]
                []
            , Svg.path [ fill "#df0000", d "M-20 0h720v240H-20z" ]
                []
            , Svg.path [ d "M146 40a84 84 0 0 0 1 165 86 86 0 1 1-1-165z", fill "#fff" ]
                []
            , Svg.path [ fill "#fff", d "M133 110l5 15-13-9-13 9 5-15-13-9h16l5-16 5 15 16 1zm18 52l4 15-12-9-13 9 4-15-12-9h15l5-16 5 16h16zm58 0l5 15-13-9-13 9 5-15-13-10h16l5-15 5 15h16zm17-52l5 15-13-9-13 9 5-15-13-9h16l5-16 5 16h16zm-46-34l5 15-13-9-13 9 5-15-13-10h16l5-15 5 15h16z" ]
                []
            ]
        ]
