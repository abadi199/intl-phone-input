module IntlPhoneInput.Flag.AT exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", viewBox "0 0 640 480", width "100%" ]
        [ g [ Svg.Attributes.fillRule "evenodd" ]
            [ path [ d "M640 480H0V0h640z", fill "#fff" ]
                []
            , text "    "
            , path [ d "M640 480H0V319.997h640zm0-319.875H0V.122h640z", fill "#df0000" ]
                []
            , text "  "
            ]
        ]
