module IntlPhoneInput.Flag.FK exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ linearGradient [ id "a" ]
                [ stop [ stopColor "#a43907", offset "0" ]
                    []
                , stop [ stopColor "#fff", offset "1" ]
                    []
                ]
            , linearGradient [ id "b", y2 "577", xlinkHref "#a", gradientUnits "userSpaceOnUse", x2 "471", y1 "592", x1 "444" ]
                []
            ]
        , Svg.path [ fill "#006", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fillRule "evenodd", fill "#006", d "M0 0h400v200H0z" ]
            []
        , Svg.path [ d "M0 0v26l317 203h40v-26L40 0H0zm357 0v26L40 229H0v-26L317 0h40z", fill "#fff" ]
            []
        , Svg.path [ d "M149 0v229h59V0h-59zM0 76v76h357V76H0z", fill "#fff" ]
            []
        , Svg.path [ d "M0 91v46h357V91H0zM161 0v229h35V0h-35zM0 229l119-77h27L27 229H0zM0 0l119 76H92L0 17V0zm211 76L330 0h27L238 76h-27zm146 153l-119-77h27l92 60v17z", fill "#c00" ]
            []
        , Svg.path [ d "M671 322a13 13 0 0 0-2 0c-3 0-9 11-12 18l-9 13c-1 1-2 3-1 5-7 1-8 7-8 10l1 3 4 8c5 9 11 22 15 23 5 1 19-4 29-12a164 164 0 0 0 124 0c10 8 24 13 29 12 4-1 10-14 15-23l4-8 1-3c0-3-1-9-8-10 1-2 0-4-1-5l-9-13c-3-7-9-18-12-18-5-1-15 1-15 2v1l-21 19 5 27a147 147 0 0 1-101 0c4-12 6-26 6-27l-21-19v-1c0-1-8-3-13-2zm5 24c3 0 6 2 8 4v1l-4 11-14-10c2-3 6-6 10-6zm148 0c4 0 8 3 10 6-4 3-8 7-14 10l-4-11v-1c2-2 5-4 8-4zm-166 27l10 7-3 2h-6l-1-6a70 70 0 0 1 0-3zm184 0v3l-1 6h-6l-3-2 10-7z", fillRule "evenodd", transform "matrix(1.17 0 0 1.17 -389 -22)", stroke "#fff", strokeWidth "10", fill "url(#b)" ]
            []
        , Svg.path [ d "M397 606s-76-21-75-102V397h149l1 106c0 81-75 103-75 103z", fillRule "evenodd", transform "matrix(1.48 0 0 1.54 -99 -521)", stroke "#fff", strokeWidth "4", fill "#0072c4" ]
            []
        ]
