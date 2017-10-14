module IntlPhoneInput.Svg
    exposing
        ( arrow
        , flag
        )

import IntlPhoneInput.Flag.AD as AD
import IntlPhoneInput.Flag.AE as AE
import IntlPhoneInput.Flag.AF as AF
import IntlPhoneInput.Flag.AG as AG
import IntlPhoneInput.Flag.AI as AI
import IntlPhoneInput.Flag.AL as AL
import IntlPhoneInput.Flag.GB as GB
import IntlPhoneInput.Flag.US as US
import IntlPhoneInput.Flag.Unknown as Unknown
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


flag : String -> Svg msg
flag isoCode =
    case String.toUpper isoCode of
        "AD" ->
            AD.flag

        "AE" ->
            AE.flag

        "AF" ->
            AF.flag

        "AG" ->
            AG.flag

        "AI" ->
            AI.flag

        "AL" ->
            AL.flag

        "US" ->
            US.flag

        "GB" ->
            GB.flag

        _ ->
            Unknown.flag
