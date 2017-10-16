module IntlPhoneInput.Flag.MY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ width "100%", height "100%", viewBox "0 0 640 480" ]
        [ rect [ fill "#aaa", x "0", y "0", width "640", height "480" ] [] ]
