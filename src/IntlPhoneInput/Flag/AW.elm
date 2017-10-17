module IntlPhoneInput.Flag.AW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h288v216H0z" ]
                    []
                ]
            ]
        , g [ transform "scale(2.2222)", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#39c", d "M0 0v216h324V0H0z" ]
                []
            , Svg.path [ fill "#ff0", d "M0 144v12h324v-12H0zm0 24v12h324v-12H0z" ]
                []
            ]
        , Svg.path [ d "M142 34l-21 79-78 21 78 20 21 79 21-79 79-21-79-20-21-79z", strokeWidth "4", stroke "#fff", fill "#c00" ]
            []
        ]
