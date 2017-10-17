module IntlPhoneInput.Flag.TG exposing (flag)

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
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "scale(.9375)" ]
            [ Svg.path [ fill "#ffe300", d "M0 0h768v512H0z" ]
                []
            , Svg.path [ fill "#118600", d "M0 208h768v103H0zM0 0h768v103H0z" ]
                []
            , Svg.path [ fill "#d80000", d "M0 0h307v311H0z" ]
                []
            , Svg.path [ d "M134 128l19-53 17 53h58l-46 35 21 58c-1-2-50-36-50-36l-49 34 19-56-44-34 55-1z", fill "#fff" ]
                []
            , Svg.path [ fill "#118600", d "M0 409h768v103H0z" ]
                []
            ]
        ]
