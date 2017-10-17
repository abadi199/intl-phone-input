module IntlPhoneInput.Flag.IL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-88 0h683v512H-88z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(82) scale(.94)" ]
            [ Svg.path [ fill "#fff", d "M619 512h-731V0h731z" ]
                []
            , Svg.path [ fill "#00c", d "M619 115h-731V48h731zm0 351h-731v-68h731zM136 191l111 191 112-190-223-1z" ]
                []
            , Svg.path [ d "M226 318l21 35 21-35h-42z", fill "#fff" ]
                []
            , Svg.path [ d "M136 321l110-192 113 191-223 1z", fill "#00c" ]
                []
            , Svg.path [ d "M226 192l21-36 21 35-42 1zm-44 79l-22 36h41l-19-36zm-21-66h41l-20 36-21-36zm151 67l21 35h-42l21-35zm20-67h-41l20 36 21-36zm-114 0l-28 51 29 50 52 2 32-52-29-52-56 1z", fill "#fff" ]
                []
            ]
        ]
