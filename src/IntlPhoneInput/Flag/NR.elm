module IntlPhoneInput.Flag.NR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-54.667 0h682.67v512h-682.67z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(51.25) scale(.9375)", strokeWidth "1pt" ]
            [ Svg.path [ fill "#002170", d "M-140 0H884v512H-140z" ]
                []
            , Svg.path [ fill "#ffb20d", d "M-140 234.11H884v43.783H-140z" ]
                []
            , Svg.path [ fill "#fff", d "M161.81 437.989l-32.916-32.971-10.604 45.363-12.008-45.015-31.875 33.978 12.107-44.989-44.59 13.498 32.972-32.907-45.365-10.613 45.016-12.008L40.56 320.45l44.989 12.108-13.49-44.591 32.907 32.971 10.614-45.364 12.008 45.015 31.866-33.977-12.098 44.988 44.59-13.498-32.98 32.908 45.363 10.613-45.015 12.009 33.987 31.874-44.989-12.108z" ]
                []
            ]
        ]
