module IntlPhoneInput.Flag.ZA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-72 0h683v512H-72z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(67) scale(.93748)" ]
            [ g [ fillRule "evenodd" ]
                [ Svg.path [ d "M-72 408V104l226 152-226 152z" ]
                    []
                , Svg.path [ d "M82 512l254-171h360v171H82z", fill "#00c" ]
                    []
                , Svg.path [ d "M66 0h630v171H336S69-2 66 0z", fill "red" ]
                    []
                , Svg.path [ d "M-72 64v40l226 152-226 152v40l285-192L-72 64z", fill "#fc0" ]
                    []
                , Svg.path [ d "M-72 64V0h95l301 204h372v104H324L23 512h-95v-64l285-192L-72 64z", fill "#093" ]
                    []
                , Svg.path [ d "M23 0h59l254 171h360v33H324L23 0zm0 512h59l254-171h360v-33H324L23 512z", fill "#fff" ]
                    []
                ]
            ]
        ]
