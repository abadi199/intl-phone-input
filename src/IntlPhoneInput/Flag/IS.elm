module IntlPhoneInput.Flag.IS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", strokeWidth "0", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#003897", d "M0 0h666.67v480H0z" ]
                []
            , Svg.path [ d "M0 186.67h186.67V0h106.67v186.67h373.33v106.67H293.34v186.67H186.67V293.34H0V186.67z", fill "#fff" ]
                []
            , Svg.path [ d "M0 213.33h213.33V0h53.333v213.33h400v53.333h-400v213.33H213.33v-213.33H0V213.33z", fill "#d72828" ]
                []
            ]
        ]
