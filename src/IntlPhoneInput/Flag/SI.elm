module IntlPhoneInput.Flag.SI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-15 0h683v512H-15z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(14) scale(.9375)" ]
            [ Svg.path [ fill "#fff", d "M-62 0H962v512H-62z" ]
                []
            , Svg.path [ fill "#de2918", d "M-62 341H962v171H-62z" ]
                []
            , Svg.path [ fill "#08399c", d "M-62 171H962v170H-62z" ]
                []
            , Svg.path [ d "M228 93c-4 62-6 95-15 111-10 17-20 29-60 44-40-15-49-27-60-44-9-16-11-49-15-111l6-2 27-8c9-2 17-4 42-4s33 2 42 4l27 8 6 2z", fill "#de2918" ]
                []
            , Svg.path [ d "M223 91c-4 61-7 90-12 103-10 23-25 36-58 48-33-12-48-25-58-48-5-13-8-41-11-103 11-4 20-7 27-8 9-2 17-4 42-5 25 1 33 3 42 5l28 8z", fill "#08399c" ]
                []
            , Svg.path [ d "M153 110l2 4h6l-4 3 4 3-6 1-2 3-2-3-6-1 4-3-4-2 6-2 2-3z", fill "#fc0" ]
                []
            , Svg.path [ d "M208 180l-4-3-2-5-6-5-3-4-5-5-3-5-3-2-1-2-5 4-3 5-3 3-4-3-3-5-10-18-10 18-3 5-4 3-3-3-3-5-5-4-1 2-3 2-3 5-5 5-3 4-6 5-2 5-4 3c2 17 12 30 18 36 7 6 20 15 37 20 16-5 30-14 37-20 6-6 16-19 18-36z", fill "#fff" ]
                []
            , Svg.path [ d "M169 84l2 4 7 1-5 2 5 3-7 1-1 4-3-4-6-1 4-3-4-2 7-1 1-4zm-33 0l2 4 7 1-5 2 5 3-6 1-2 4-3-4-6-1 5-3-5-2 7-1 1-4z", fill "#fc0" ]
                []
            , Svg.path [ d "M200 203h-15l-8-5-9 1-9 3-6 1-6-1-9-3-9-1-8 5h-15l-3-6 11 1h7l8-4h10l8 4h13l8-4h9l8 4h7l11-1-3 6zm-87 10l8-1 8-4h9l9 4 6 1 6-1 9-4h9l8 4 8 1 5-6-1-1-5 2-7-1-8-4h-9l-9 4-6 1-6-1-9-4h-9l-8 4-7 1-5-1 4 6z", fill "#08399c" ]
                []
            ]
        ]
