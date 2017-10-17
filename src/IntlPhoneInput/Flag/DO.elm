module IntlPhoneInput.Flag.DO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-223-115h958v718h-958z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "matrix(.67 0 0 .67 149 77)", fillRule "evenodd" ]
            [ Svg.path [ fill "#00319c", d "M322 329h447v274H322z" ]
                []
            , Svg.path [ fill "#d62918", d "M-257 330h446v273h-446z" ]
                []
            , Svg.path [ fill "#00319c", d "M-256-115h445v305h-445z" ]
                []
            , Svg.path [ fill "#d62918", d "M325-113h443v306H325z" ]
                []
            , Svg.path [ fill "#fff", d "M-256 190H769v142H-256z" ]
                []
            , Svg.path [ fill "#fff", d "M187-114h139v717H187z" ]
                []
            ]
        ]
