module IntlPhoneInput.Flag.MY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ width "100%", height "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ d "M0 0h640v480H0z", fill "#cc0001" ]
            []
        , Svg.path [ d "M0 446h640v34H0z", fill "#fff", id "a" ]
            []
        , use [ xlinkHref "#a", transform "translate(0 -69)", width "100%", height "100%" ]
            []
        , use [ xlinkHref "#a", transform "translate(0 -137)", width "100%", height "100%" ]
            []
        , use [ xlinkHref "#a", transform "translate(0 -206)", width "100%", height "100%" ]
            []
        , use [ xlinkHref "#a", transform "translate(0 -274)", width "100%", height "100%" ]
            []
        , use [ xlinkHref "#a", transform "translate(0 -343)", width "100%", height "100%" ]
            []
        , use [ xlinkHref "#a", transform "translate(0 -412)", width "100%", height "100%" ]
            []
        , Svg.path [ d "M0 0h373v274H0z", fill "#010066" ]
            []
        , g [ fill "#fc0" ]
            [ Svg.path [ d "M150 49a89 89 0 1 0 48 163 79 79 0 0 1-26 4 79 79 0 1 1 27-152 89 89 0 0 0-49-15z" ]
                []
            , Svg.path [ d "M297 183l-37-19 11 40-25-34-8 41-8-41-25 34 11-40-37 19 28-31-43 1 39-16-39-16 43 1-28-31 37 20-11-40 25 33 8-41 8 41 25-33-11 40 37-20-28 31 43-1-39 16 39 17-43-2z" ]
                []
            ]
        ]
