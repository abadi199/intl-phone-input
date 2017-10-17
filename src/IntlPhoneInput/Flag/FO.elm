module IntlPhoneInput.Flag.FO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-78 32h640v480H-78z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(78 -32)", strokeWidth "0" ]
            [ Svg.path [ fill "#fff", d "M-78 32h664v480H-78z" ]
                []
            , Svg.path [ d "M-76 219h186V32h106v187h372v106H216v187H110V325H-76V219z", fill "#003897" ]
                []
            , Svg.path [ d "M-76 245h212V32h54v213h398v54H190v213h-54V299H-76v-54z", fill "#d72828" ]
                []
            ]
        ]
