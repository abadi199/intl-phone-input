module IntlPhoneInput.Flag.FO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-78.015 32h640v480h-640z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(78.02 -32)", strokeWidth "0" ]
            [ Svg.path [ fill "#fff", d "M-78.015 32h663.91v480h-663.91z" ]
                []
            , Svg.path [ d "M-76.033 218.67h185.9V32h106.23v186.67h371.79v106.67h-371.79v186.67h-106.23V325.34h-185.9V218.67z", fill "#003897" ]
                []
            , Svg.path [ d "M-76.033 245.33h212.45V32h53.113v213.33h398.35v53.333H189.53v213.33h-53.113v-213.33h-212.45V245.33z", fill "#d72828" ]
                []
            ]
        ]
