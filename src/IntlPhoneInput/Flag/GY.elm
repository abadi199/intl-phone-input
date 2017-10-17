module IntlPhoneInput.Flag.GY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#399408", d "M2 0h638v480H2z" ]
                []
            , Svg.path [ d "M0 0l620 241L0 480V0z", fill "#fff" ]
                []
            , Svg.path [ d "M0 20c4 0 559 218 556 220L2 463 0 20z", fill "#ffde08" ]
                []
            , Svg.path [ d "M2 1c2 0 291 241 291 241L2 477V1z" ]
                []
            , Svg.path [ d "M0 34c2-15 261 208 261 208L0 452V34z", fill "#de2110" ]
                []
            ]
        ]
