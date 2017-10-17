module IntlPhoneInput.Flag.HN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ d "M0 0h640v480H0z", fill "#0073cf" ]
            []
        , Svg.path [ d "M0 160h640v160H0z", fill "#fff" ]
            []
        , g [ id "c", transform "translate(320 240) scale(26.66665)", fill "#0073cf" ]
            [ g [ id "b" ]
                [ Svg.path [ id "a", d "M0 0v-1z" ]
                    []
                , use [ height "100%", width "100%", xlinkHref "#a", transform "scale(-1 1)" ]
                    []
                ]
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(72)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-72)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(144)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-144)" ]
                []
            ]
        , use [ height "100%", width "100%", xlinkHref "#c", transform "translate(133 -43)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#c", transform "translate(133 37)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#c", transform "translate(-133 -43)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#c", transform "translate(-133 37)" ]
            []
        ]
