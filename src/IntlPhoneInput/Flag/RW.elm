module IntlPhoneInput.Flag.RW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#20603d", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fad201", d "M0 0h640v360H0z" ]
            []
        , Svg.path [ fill "#00a1de", d "M0 0h640v240H0z" ]
            []
        , g [ transform "translate(511 125) scale(.66667)" ]
            [ g [ id "b" ]
                [ Svg.path [ id "a", d "M116 0L36 5l76 25-79-16 68 44-72-36 53 60-60-53 36 72-44-68 16 79L5 36l-5 80L-1-1z", fill "#e5be01" ]
                    []
                , use [ height "100%", width "100%", xlinkHref "#a", transform "scale(1 -1)" ]
                    []
                ]
            , use [ height "100%", width "100%", xlinkHref "#b", transform "scale(-1 1)" ]
                []
            , circle [ r "34", fill "#e5be01", stroke "#00a1de", strokeWidth "3" ]
                []
            ]
        ]
