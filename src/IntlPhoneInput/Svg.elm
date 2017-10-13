module IntlPhoneInput.Svg
    exposing
        ( arrow
        )

import Svg exposing (Svg, polygon, svg)
import Svg.Attributes exposing (..)


arrow : Svg msg
arrow =
    let
        rotation =
            "90"
    in
    svg [ width "100%", height "100%", viewBox "0 0 20 20", style <| "transform: rotate(" ++ rotation ++ "deg);" ]
        [ polygon [ points "0 0, 0 20, 16 10" ] []
        ]
