module IntlPhoneInput.Flag.SY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ rect [ y "160", width "640", height "160", ry "0", rx "0", fill "#fff", fillRule "evenodd" ]
            []
        , rect [ y "320", width "640", height "160", ry "0", rx "0", fillRule "evenodd" ]
            []
        , Svg.path [ d "M0 0h640v160H0z", fill "red", fillRule "evenodd" ]
            []
        , Svg.path [ d "M201.9 281l-28.822-20.867-28.68 21.072 10.667-34.242-28.628-21.145 35.418-.295 10.985-34.138 11.221 34.06 35.418.045-28.481 21.344L201.9 281zm307.64 0l-28.822-20.867-28.68 21.072 10.667-34.242-28.628-21.145 35.418-.295 10.985-34.138 11.221 34.06 35.418.045-28.481 21.344L509.54 281z", fill "#090", fillRule "evenodd" ]
            []
        ]
