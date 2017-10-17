module IntlPhoneInput.Flag.MK exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#d20000", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ d "M0 0h96l224 231.43L544 0h96L0 480h96l224-231.43L544 480h96zm640 192v96L0 192v96zM280 0l40 205.714L360 0zm0 480l40-205.714L360 480z", fill "#ffe600" ]
            []
        , circle [ r "77.143", cy "240", cx "320", fill "#ffe600", stroke "#d20000", strokeWidth "17.143" ]
            []
        ]