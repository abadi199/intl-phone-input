module IntlPhoneInput.Flag.LT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", transform "matrix(.64143 0 0 .96773 0 0)", strokeWidth "1pt" ]
            [ rect [ transform "matrix(.93865 0 0 .69686 0 0)", rx "0", ry "0", width "1063", height "708.66", fill "#007308" ]
                []
            , rect [ transform "matrix(.93865 0 0 .69686 0 0)", rx "0", ry "0", width "1063", y "475.56", height "236.22", fill "#bf0000" ]
                []
            , Svg.path [ fill "#ffb300", d "M0 0h997.77v164.61H0z" ]
                []
            ]
        ]
