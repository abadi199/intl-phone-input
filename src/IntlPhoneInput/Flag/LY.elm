module IntlPhoneInput.Flag.LY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M166.67-20h666.67v500H166.67z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "matrix(.96 0 0 .96 -160 19.2)" ]
            [ Svg.path [ fill "#239e46", d "M0-20h1000v500H0z" ]
                []
            , Svg.path [ d "M0-20h1000v375H0z" ]
                []
            , Svg.path [ fill "#e70013", d "M0-20h1000v125H0z" ]
                []
            , Svg.path [ d "M544.2 185.8a54.3 54.3 0 1 0 0 88.4 62.5 62.5 0 1 1 0-88.4M530.4 230l84.1-27.3-52 71.5v-88.4l52 71.5z", fill "#fff" ]
                []
            ]
        ]
