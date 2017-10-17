module IntlPhoneInput.Flag.KY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ fill "#006", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fillRule "evenodd", fill "#006", d "M0 0h400v200H0z" ]
            []
        , Svg.path [ fill "#fff", d "M0 0v27l334 215h43v-27L42 0H0zm377 0v27L42 242H0v-27L334 0h43z" ]
            []
        , Svg.path [ fill "#fff", d "M157 0v242h63V0h-63zM0 81v81h377V81H0z" ]
            []
        , Svg.path [ fill "#c00", d "M0 97v48h377V97H0zM169 0v242h38V0h-38zM0 242l126-80h28L28 242H0zM0 0l126 81H97L0 18V0zm223 81L348 0h29L251 81h-28zm154 161l-126-80h28l98 62v18z" ]
            []
        ]
