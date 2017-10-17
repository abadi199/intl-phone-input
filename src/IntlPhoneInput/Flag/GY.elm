module IntlPhoneInput.Flag.GY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#399408", d "M2.426 0h637.557v480H2.426z" ]
                []
            , Svg.path [ d "M.167 0C-.67.073 619.765 241.48 619.765 241.48L-.005 479.77.166 0z", fill "#fff" ]
                []
            , Svg.path [ d "M.28 20.186c3.462 0 559.053 217.89 555.893 220.03L1.867 463.266.287 20.186z", fill "#ffde08" ]
                []
            , Svg.path [ d "M1.863.783c1.848 0 290.94 240.92 290.94 240.92L1.863 476.983V.783z" ]
                []
            , Svg.path [ d "M.28 33.902c1.658-14.986 260.9 208.4 260.9 208.4L.268 451.702V33.912z", fill "#de2110" ]
                []
            ]
        ]
