module IntlPhoneInput.Flag.MZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h683v512H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "scale(.9375)" ]
            [ Svg.path [ fillRule "evenodd", fill "#009a00", d "M0 0h768v160H0z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#fff", d "M0 160h768v16H0z" ]
                []
            , Svg.path [ fillRule "evenodd", d "M0 176h768v160H0z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#fff", d "M0 336h768v16H0z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#ffca00", d "M0 352h768v160H0z" ]
                []
            , Svg.path [ d "M0 0v512l336-256L0 0z", fillRule "evenodd", fill "red" ]
                []
            , Svg.path [ fill "#ffca00", fillRule "evenodd", d "M199 333l-52-38-51 38 20-60-52-37h64l19-61 20 61h63l-51 37z" ]
                []
            , Svg.path [ strokeLinejoin "round", d "M103 291h37c3 3 9 5 16 0 11-6 34 0 34 0l4-5-11-35-4-4s-8-5-24-3c-15 1-21-1-21-1s-14 2-17 4l-5 4-9 40z", fillRule "evenodd", stroke "#000", strokeLinecap "round", fill "#fff" ]
                []
            , Svg.path [ strokeLinejoin "round", d "M110 282s36-5 46 9c-6 4-11 4-17 0 1-1 13-14 43-9", stroke "#000", strokeLinecap "round", fill "none" ]
                []
            , Svg.path [ d "M148 247v38m31-38l7 31", stroke "#000", fill "none" ]
                []
            , Svg.path [ strokeLinejoin "round", d "M117 247l-4 16", stroke "#000", strokeLinecap "round", fill "none" ]
                []
            , Svg.path [ strokeLinejoin "round", d "M79 295l9 10h2l13-15 6-7 1-3 10-9h2c-1 0-2-1-1-2l3-1 1 2-2 3h-3l-6 5 3 2 3 10 5-3-3-10 6-7-2-4 1-2s22 14 30 10v-9s-22-3-22-7c-1-4 5-5 5-5l-3-3 1-2 4 5 8-8 52 59c3-1 3-2 3-5l-50-57 4-5 1-2 6-5c2 0 3 1 4 3l16-14h2l27-25-29 20-1-1v-2c-1-1-3 1-3 1s-4-1-5-3v5l-8 7-6-1-8 8-1 3 1 3-4 4-1-2 4-3v-2l-1-2-5 5-14-16 1-3-9-9c-3-2-8-2-9 5-1 2-8 0-8 0l-3 1-21 29 12 14 23-30v-8l5 5h5l14 15-3 2 2 3 3-2 1 1-4 2c-1-1-3-2-3-5l-8 7v1l-23 19h-2v6l14-12v-2l2 1 12-9v1l-10 10v1l-2 1-1-1-14 13h-2l-8 7-5 2-14 12z", fillRule "evenodd", stroke "#000", strokeLinecap "round" ]
                []
            ]
        ]
