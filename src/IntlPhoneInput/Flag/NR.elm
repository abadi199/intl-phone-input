module IntlPhoneInput.Flag.NR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-55 0h683v512H-55z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(51) scale(.9375)" ]
            [ Svg.path [ fill "#002170", d "M-140 0H884v512H-140z" ]
                []
            , Svg.path [ fill "#ffb20d", d "M-140 234H884v44H-140z" ]
                []
            , Svg.path [ fill "#fff", d "M162 438l-33-33-11 45-12-45-32 34 13-45-45 14 33-33-45-11 45-12-34-32 45 13-14-45 33 33 11-45 12 45 31-34-12 45 45-14-33 33 45 11-45 12 34 32-45-13z" ]
                []
            ]
        ]
