module IntlPhoneInput.Flag.CA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#fff", d "M150 0h340v480H150z" ]
            []
        , Svg.path [ fill "#bf0a30", d "M-20 0h170v480H-20zm510 0h170v480H490zM201 232l-13 4 61 54c5 14-1 18-5 25l66-8-2 67h14l-3-67 67 8c-4-9-8-13-4-27l61-51-10-4c-9-7 3-33 5-49 0 0-36 12-38 6l-9-18-33 36c-3 1-5 0-6-3l15-75-23 13c-2 1-4 0-6-2l-23-46-23 48c-2 1-4 2-5 0l-23-12 14 74c-1 3-4 4-7 2l-31-35c-4 6-7 17-12 19-6 3-24-4-36-7 4 15 17 40 9 48z" ]
            []
        ]
