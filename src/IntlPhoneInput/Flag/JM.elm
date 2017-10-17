module IntlPhoneInput.Flag.JM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ d "M0 0l320 240L0 480zm640 0L320 240l320 240z" ]
                []
            , Svg.path [ d "M0 0l320 240L640 0zm0 480l320-240 320 240z", fill "#090" ]
                []
            , Svg.path [ d "M640 0h-60L0 435v45h60L640 45z", fill "#fc0" ]
                []
            , Svg.path [ d "M0 0v45l580 435h60v-45L60 0z", fill "#fc0" ]
                []
            ]
        ]
