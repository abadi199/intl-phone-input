module IntlPhoneInput.Flag.GB exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-85 0h682v512H-85z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(80) scale(.94)" ]
            [ Svg.path [ fill "#006", d "M-256 0H768v512H-256z" ]
                []
            , Svg.path [ d "M-256 0v57l910 455h114v-57L-142 0h-114zM768 0v57l-910 455h-114v-57L654 0h114z", fill "#fff" ]
                []
            , Svg.path [ d "M171 0v512h170V0H171zm-427 171v170H768V171H-256z", fill "#fff" ]
                []
            , Svg.path [ d "M-256 205v102H768V205H-256zM205 0v512h102V0H205zm-461 512L85 341h77l-342 171h-76zm0-512L85 171H9L-256 38V0zm606 171L692 0h76L427 171h-77zm418 341L427 341h76l265 133v38z", fill "#c00" ]
                []
            ]
        ]
