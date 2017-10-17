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
        , g [ transform "translate(511 125.4) scale(.66667)" ]
            [ g [ id "b" ]
                [ Svg.path [ id "a", d "M116.1 0L35.692 4.7l76.452 25.35L33.26 13.776l67.286 44.273L28.56 21.915l53.535 60.18-60.18-53.534 36.135 71.986L13.777 33.26l16.272 78.884L4.7 35.692 0 116.1-1-1z", fill "#e5be01" ]
                    []
                , use [ height "100%", width "100%", xlinkHref "#a", transform "scale(1 -1)" ]
                    []
                ]
            , use [ height "100%", width "100%", xlinkHref "#b", transform "scale(-1 1)" ]
                []
            , circle [ r "34.3", fill "#e5be01", stroke "#00a1de", strokeWidth "3.4" ]
                []
            ]
        ]
