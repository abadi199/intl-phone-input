module IntlPhoneInput.Flag.GH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#006b3f", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fcd116", d "M0 0h640v320H0z" ]
            []
        , Svg.path [ fill "#ce1126", d "M0 0h640v160H0z" ]
            []
        , Svg.path [ d "M320 160l51.987 160-136.104-98.885h168.234L268.013 320z" ]
            []
        ]
