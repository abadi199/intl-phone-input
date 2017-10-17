module IntlPhoneInput.Flag.EC exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#ffe800", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#00148e", d "M0 240h640v240H0z" ]
                []
            , Svg.path [ fill "#da0010", d "M0 360h640v120H0z" ]
                []
            ]
        , Svg.path [ d "M301 273s-18 336 53 336 107-35 107-35l-1-185-159-116z", fillRule "evenodd", transform "matrix(.45 0 0 .64 72 -60)", stroke "#000", fill "#ffdf00" ]
            []
        , Svg.path [ d "M301 273s-35 336 71 336c89 0 89-53 106-53l-17-124-160-159z", fillRule "evenodd", stroke "#000", fill "#ffdf00", transform "matrix(.58 0 0 .62 10 -10)" ]
            []
        , Svg.path [ d "M337 308c0 18-36 213 53 266 35 18 88-18 88 0l-17-142-124-124z", fillRule "evenodd", transform "matrix(.58 0 0 .62 10 -10)", stroke "#000", fill "#0000c4" ]
            []
        , Svg.path [ d "M372 344c0 17-18 159 35 195 36 35 125 25 125 25l-71-132-89-88z", fillRule "evenodd", stroke "#000", fill "#e10000", transform "matrix(.58 0 0 .62 10 -10)" ]
            []
        , g [ fillRule "evenodd", stroke "#000" ]
            [ Svg.path [ d "M301 273s-18 336 53 336 107-35 107-35l-1-185-159-116z", transform "matrix(-.45 0 0 .64 568 -60)", fill "#ffdf00" ]
                []
            , Svg.path [ d "M344 304c0 18-7 270 28 270s89-18 89-18l-1-167-116-85z", transform "matrix(-.45 0 0 .64 568 -60)", fill "#0000c4" ]
                []
            , Svg.path [ d "M301 273s-35 336 71 336c89 0 89-53 106-53l-17-124-160-159z", transform "matrix(-.58 0 0 .62 630 -10)", fill "#ffdf00" ]
                []
            , Svg.path [ d "M337 308c0 18-36 213 53 266 35 18 88-18 88 0l-17-142-124-124z", transform "matrix(-.58 0 0 .62 630 -10)", fill "#0000c4" ]
                []
            , Svg.path [ d "M372 344c0 17-18 159 35 195 36 35 125 25 125 25l-71-132-89-88z", transform "matrix(-.58 0 0 .62 630 -10)", fill "#e10000" ]
                []
            ]
        , Svg.path [ d "M380 236c0 48-28 88-62 88s-62-40-62-88c0-49 28-88 62-88s62 39 62 88z", fillRule "evenodd", fill "#a7cfff" ]
            []
        , Svg.path [ d "M183 90s21-12 44-21c24-8 51-14 55-14 7 0 19 18 21 18s10-5 20-5 16 8 18 8h19c2 0-7-20 0-19 3 0 28 4 52 12s58 22 58 22-55 7-70 5c-2 1 0 13-3 8l-25-4-16 5-19 5 13 21-16 8s-10-24-14-24-6 17-11 16-7-16-11-20-25-5-34-7l-28-6c-7-2-14 5-17 5s4-6 1-7-5 3-7 3l-25-5c-2-1 5-4 3-4h-8z", fillRule "evenodd", fill "#984000" ]
            []
        ]
