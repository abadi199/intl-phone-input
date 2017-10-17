module IntlPhoneInput.Flag.PF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fill "#fff", d "M80 0h480v480H80z" ]
                []
            , Svg.path [ d "M277 341s11-9 22-9 13 7 20 8c8 0 14-7 23-8 9 0 21 7 21 7l-40 12-46-10zm-23-13h136s-12-12-26-12c-13-1-10 5-20 6-11 1-13-6-23-6s-15 6-23 7c-7 0-16-8-22-7-5 0-25 8-25 8l3 4zm-17-16h167c3-3-8-13-18-13-8 0-14 8-21 8-7 1-14-8-22-8-7 0-15 8-23 8s-13-8-23-8c-9 0-14 9-21 9-8-1-14-10-21-10s-19 11-21 10c-2 0 3 5 3 4z", fillRule "evenodd", stroke "#083d9c", strokeWidth "3", fill "#083d9c" ]
                []
            , Svg.path [ strokeLinejoin "round", d "M301 219l39 10v-55c-18 1-33-33-1-35-31-5-34 3-38 12v68z", fillRule "evenodd", stroke "#000", strokeWidth "3", fill "red" ]
                []
            , Svg.path [ d "M277 259h87", fillRule "evenodd", stroke "#083d9c", strokeLinecap "round", strokeWidth "5", fill "#083d9c" ]
                []
            , Svg.path [ d "M281 238l10 14m-10 0l11-14m-5-1v9m11-8l10 14m-10 0l11-14m-6-1v9m11-8l10 14m-10 0l11-14m-5-1v9m11-8l11 14m-11 0l12-14m-6-1v9m11-8l10 14m-10 0l11-14m-5-1v9", strokeWidth "4", stroke "#000", strokeLinecap "round", fill "none" ]
                []
            , Svg.path [ d "M219 260h37v-23l-43-2 6 25zm-2-32l39 3v-16l-38-15-1 28zm8-33l30 15 4-5-2-4 3-4-4-3c0-2 3-4 3-4l-27-24-7 29zm198 65h-39v-23l42-3-3 26zm-39-28l46-6-9-26-37 15v17zm34-39l-33 17c-1-2-1-4-4-5 0 0 2-1 2-3l-2-4c0-1 2-2 2-5l-2-5 26-20 11 25zm-72 39l16-1 1-7-17 8zm-51-1h-18v-7l18 7zm-1-2l-17-9v-12s-2 1-2-2c0-5 13 9 20 14l-1 9zm52-1l-1-8 20-17-2 6v11l-17 8zm-103-64l18 19c0-1 4-2 8-1 4 0 8-1 8 2s-2 3-2 5 3 2 3 4c0 3-2 3-2 5-1 1 2 1 2 1l16 16 1-17-35-54-17 20zm27-21l24 48s0-44 4-46l-7-12-21 10zm101 2l-26 47v-20s3-3-1-3h-7l10-37 24 13zm27 20l-17 18c-1-2-6-1-11-1s-6 2-6 3c1 3 2 1 2 4s-2 2-2 4c0 3 4 2 1 4l-19 19v-18l37-57 15 24z", fillRule "evenodd", fill "#ef7d08" ]
                []
            , Svg.path [ strokeLinejoin "round", d "M310 268c-9 14-31 10-36 0-2 0-1-59-1-59s-2-1-2-3 3-2 3-4c0-3-3-2-4-4 0-2 4-2 4-4 0-3-4-2-4-4s3-4 3-4h-9c-4 0 0 1 0 3l-2 5c0 1 3 2 3 4s-3 2-3 3c0 3 3 3 3 5s-4 2-4 3l1 61c5 30 38 38 48-2zm22 0c8 14 30 10 36 0v-59s3-1 3-3-3-2-3-4c0-3 3-2 3-4s-3-2-3-4c0-3 3-2 3-5l-3-3h9c5 0 0 1 0 3s3 3 3 5c0 1-3 2-3 4-1 2 3 2 3 3-1 3-3 3-3 5s3 2 3 3v61c-6 30-39 38-48-2z", fillRule "evenodd", stroke "#000", strokeWidth "3", fill "red" ]
                []
            , Svg.path [ d "M302 296h37c0-1-8-13-19-12-11 0-19 12-18 12zm119-1h-51s6-4 8-8c3 2 2 4 9 4s13-7 19-7 15 11 15 11zm-201 0h51s-7-4-9-8c-3 2-2 4-9 4-6 0-13-7-19-7s-14 11-14 11zm3-16h37s-3-5-3-11c-9-3-17 7-24 7-6 0-13-7-13-7l3 11zm194 0h-36l3-11c9-3 17 7 23 7 7 0 14-7 14-7l-4 11zm-106 0l18-1s1-5-9-5-9 6-9 6zm-11-8c3-2 6-3 8-8l-13 1s-5 3-8 7h13zm41 0c-4-2-7-3-9-8l13 1s6 3 9 7h-13z", fillRule "evenodd", stroke "#083d9c", strokeWidth "3", fill "#083d9c" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#de2010", d "M-40 360h720v120H-40zm0-360h720v120H-40z" ]
                []
            ]
        ]
