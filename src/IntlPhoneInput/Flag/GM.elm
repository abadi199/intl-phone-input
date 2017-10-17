module IntlPhoneInput.Flag.GM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0-48h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(0 48)", strokeWidth "1pt" ]
            [ Svg.path [ fill "red", d "M0-128h640V85.33H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 85.333h640v35.556H0z" ]
                []
            , Svg.path [ fill "#009", d "M0 120.89h640v142.22H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 263.11h640v35.556H0z" ]
                []
            , Svg.path [ fill "#090", d "M0 298.67h640V512H0z" ]
                []
            ]
        ]
