module IntlPhoneInput.Flag.MR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#006233", d "M0 0h640v480H0z" ]
            []
        , circle [ cx "320", cy "180", r "155", fill "#ffc400" ]
            []
        , Svg.path [ d "M243 11a150 150 0 0 0-73 129 150 150 0 0 0 150 150 150 150 0 0 0 150-150 150 150 0 0 0-73-129H243z", fill "#006233" ]
            []
        , g [ id "b", transform "matrix(5 0 0 5 320 140)" ]
            [ Svg.path [ id "a", d "M0-12L-4-1l6 2", fill "#ffc400" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#a", transform "scale(-1 1)" ]
                []
            ]
        , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(72 320 140)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(144 320 140)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-144 320 140)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-72 320 140)" ]
            []
        ]
