module IntlPhoneInput.Flag.AZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", viewBox "0 0 640 480", width "100%" ]
        [ path [ d "M.1 0h640v480H.1z", fill "#3f9c35" ]
            []
        , path [ d "M.1 0h640v320H.1z", fill "#ed2939" ]
            []
        , path [ d "M.1 0h640v160H.1z", fill "#00b9e4" ]
            []
        , node "circle"
            [ cx "304", cy "240", fill "#fff", r "72" ]
            []
        , node "circle"
            [ cx "320", cy "240", fill "#ed2939", r "60" ]
            []
        , path [ d "M384 200l7.654 21.522 20.63-9.806-9.806 20.63L424 240l-21.522 7.654 9.806 20.63-20.63-9.806L384 280l-7.654-21.522-20.63 9.806 9.806-20.63L344 240l21.522-7.654-9.806-20.63 20.63 9.806L384 200z", fill "#fff" ]
            []
        ]
