module IntlPhoneInput.Flag.TT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ d "M464 480L0 1v479h464zM176 0l464 479V0H176z", fillRule "evenodd", fill "#e00000" ]
            []
        , Svg.path [ d "M28 0h118l469 480H492L28 0z", fillRule "evenodd" ]
            []
        ]
