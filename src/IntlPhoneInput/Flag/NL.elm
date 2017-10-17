module IntlPhoneInput.Flag.NL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", transform "scale(1.25 .9375)" ]
            [ rect [ rx "0", ry "0", height "510", width "512", fill "#fff" ]
                []
            , rect [ rx "0", ry "0", height "170", width "512", y "342", fill "#21468b" ]
                []
            , Svg.path [ fill "#ae1c28", d "M0 0h512v170H0z" ]
                []
            ]
        ]
