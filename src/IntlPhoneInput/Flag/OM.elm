module IntlPhoneInput.Flag.OM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd" ]
            [ Svg.path [ fill "#ef2d29", d "M-3-22h702v553H-3z" ]
                []
            , Svg.path [ fill "#009025", d "M175 317h535v208H175z" ]
                []
            , Svg.path [ fill "#fff", d "M175-35h564v190H175z" ]
                []
            ]
        ]
