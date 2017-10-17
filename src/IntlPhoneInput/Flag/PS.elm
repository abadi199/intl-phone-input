module IntlPhoneInput.Flag.PS exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-118 0h683v512h-683z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(111) scale(.9375)" ]
            [ g [ fillRule "evenodd" ]
                [ Svg.path [ d "M-246 0H778v171H-246z" ]
                    []
                , Svg.path [ fill "#fff", d "M-246 171H778v170H-246z" ]
                    []
                , Svg.path [ fill "#090", d "M-246 341H778v171H-246z" ]
                    []
                , Svg.path [ d "M-246 512l512-256L-246 0v512z", fill "red" ]
                    []
                ]
            ]
        ]
