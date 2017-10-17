module IntlPhoneInput.Flag.KP exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M5 0h683v512H5z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(-5) scale(.93768)" ]
            [ Svg.path [ stroke "#000", fill "#fff", d "M776 512H-76V1h852z" ]
                []
            , Svg.path [ fill "#3e5698", d "M776 419H-76v93h852z" ]
                []
            , Svg.path [ fill "#c60000", d "M776 398H-76V114h852z" ]
                []
            , Svg.path [ fill "#3e5698", d "M776 1H-76v92h852z" ]
                []
            , Svg.path [ d "M329 256c0 64-54 115-119 115-66 0-119-51-119-115 0-63 53-115 119-115 65 0 119 52 119 115z", fill "#fff" ]
                []
            , Svg.path [ fill "#c40000", d "M176 271l-57-41h71l22-67 22 66h71l-58 41 21 66-57-40-58 41z" ]
                []
            ]
        ]
