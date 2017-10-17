module IntlPhoneInput.Flag.LY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M167-20h666v500H167z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "matrix(.96 0 0 .96 -160 19)" ]
            [ Svg.path [ fill "#239e46", d "M0-20h1000v500H0z" ]
                []
            , Svg.path [ d "M0-20h1000v375H0z" ]
                []
            , Svg.path [ fill "#e70013", d "M0-20h1000v125H0z" ]
                []
            , Svg.path [ d "M544 186a54 54 0 1 0 0 88 63 63 0 1 1 0-88m-14 44l84-27-51 71v-88l52 71z", fill "#fff" ]
                []
            ]
        ]
