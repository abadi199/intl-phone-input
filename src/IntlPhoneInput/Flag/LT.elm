module IntlPhoneInput.Flag.LT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", transform "scale(.64143 .96773)" ]
            [ rect [ transform "scale(.93865 .69686)", rx "0", ry "0", width "1063", height "709", fill "#007308" ]
                []
            , rect [ transform "scale(.93865 .69686)", rx "0", ry "0", width "1063", y "476", height "236", fill "#bf0000" ]
                []
            , Svg.path [ fill "#ffb300", d "M0 0h998v165H0z" ]
                []
            ]
        ]
