module IntlPhoneInput.Flag.MT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#ce0000", d "M320 0h320v480H320z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h320v480H0z" ]
                []
            ]
        , Svg.path [ d "M59 137v47h59c0 10 10 20 20 20v60h48v-60c9 0 19-10 19-20h60v-47h-60c0-10-10-20-19-20V57h-48v60c-10 0-20 10-20 20H59z", fillRule "evenodd", fill "#a0a0a0" ]
            []
        ]
