module IntlPhoneInput.Flag.CN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.path [ id "a", fill "#ffde00", d "M-1 1l1-2 1 2-2-1h2z" ]
                []
            ]
        , Svg.path [ d "M0 0h640v480H0z", fill "#de2910" ]
            []
        , use [ xlinkHref "#a", transform "matrix(71.9991 0 0 72 120 120)", width "30", height "20" ]
            []
        , use [ xlinkHref "#a", transform "matrix(-12.33562 -20.5871 20.58684 -12.33577 240 48)", width "30", height "20" ]
            []
        , use [ xlinkHref "#a", transform "matrix(-3.38573 -23.75998 23.75968 -3.38578 288 96)", width "30", height "20" ]
            []
        , use [ xlinkHref "#a", transform "matrix(6.5991 -23.0749 23.0746 6.59919 288 168)", width "30", height "20" ]
            []
        , use [ xlinkHref "#a", transform "matrix(14.9991 -18.73557 18.73533 14.99929 240 216)", width "30", height "20" ]
            []
        ]
