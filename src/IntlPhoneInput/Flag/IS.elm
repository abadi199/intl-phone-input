module IntlPhoneInput.Flag.IS exposing (flag)

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
        , g [ fillRule "evenodd", strokeWidth "0", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#003897", d "M0 0h667v480H0z" ]
                []
            , Svg.path [ d "M0 187h187V0h106v187h374v106H293v187H187V293H0V187z", fill "#fff" ]
                []
            , Svg.path [ d "M0 213h213V0h54v213h400v54H267v213h-54V267H0v-54z", fill "#d72828" ]
                []
            ]
        ]
