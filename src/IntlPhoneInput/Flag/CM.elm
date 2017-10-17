module IntlPhoneInput.Flag.CM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#007a5e", d "M0 0h213.333v480H0z" ]
            []
        , Svg.path [ fill "#ce1126", d "M213.333 0h213.333v480H213.333z" ]
            []
        , Svg.path [ fill "#fcd116", d "M426.667 0H640v480H426.667z" ]
            []
        , g [ transform "translate(320 240) scale(7.1111)", fill "#fcd116" ]
            [ g [ id "b" ]
                [ Svg.path [ id "a", d "M0-8L-2.472-.392 1.332.845z" ]
                    []
                , use [ height "100%", width "100%", xlinkHref "#a", transform "scale(-1 1)" ]
                    []
                ]
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(72)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(144)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-144)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-72)" ]
                []
            ]
        ]
