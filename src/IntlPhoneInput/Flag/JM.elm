module IntlPhoneInput.Flag.JM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ d "M0 0l320 240L0 480zM640 0L320 240l320 240z" ]
                []
            , Svg.path [ d "M0 0l320 240L640 0zM0 480l320-240 320 240z", fill "#090" ]
                []
            , Svg.path [ d "M640 0h-59.625L0 435.281V480h59.629L640.004 44.719z", fill "#fc0" ]
                []
            , Svg.path [ d "M0 0v44.722l580.375 435.28h59.629v-44.72L59.629 0z", fill "#fc0" ]
                []
            ]
        ]
