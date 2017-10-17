module IntlPhoneInput.Flag.TL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h683v512H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "scale(.9375)" ]
            [ Svg.path [ fill "#cb000f", d "M0 0h1031v512H0z" ]
                []
            , Svg.path [ d "M0 0c3 0 512 257 512 257L0 512V0z", fill "#f8c00c" ]
                []
            , Svg.path [ d "M0 0c2 0 341 257 341 257L0 512V0z" ]
                []
            , Svg.path [ d "M188 298l-61-13-31 53-5-60-61-14 55-24-3-60 40 44 55-26-28 54 39 46z", fill "#fff" ]
                []
            ]
        ]
