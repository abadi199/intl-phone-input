module IntlPhoneInput.Flag.CZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-74 0h683v512H-74z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(69) scale(.94)" ]
            [ Svg.path [ fill "#e80000", d "M-74 0h768v512H-74z" ]
                []
            , Svg.path [ fill "#fff", d "M-74 0h768v256H-74z" ]
                []
            , Svg.path [ d "M-74 0l383 256-383 255V0z", fill "#00006f" ]
                []
            ]
        ]
