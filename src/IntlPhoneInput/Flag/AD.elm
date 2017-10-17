module IntlPhoneInput.Flag.AD exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#d0103a", d "M0 0h640v480H0z", id "path4" ]
            []
        , Svg.path [ fill "#fedf00", d "M0 0h435.2v480H0z", id "path6" ]
            []
        , Svg.path [ fill "#0018a8", d "M0 0h204.8v480H0z", id "path8" ]
            []
        ]
