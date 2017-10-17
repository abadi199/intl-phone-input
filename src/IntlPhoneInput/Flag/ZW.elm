module IntlPhoneInput.Flag.ZW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ rect [ fillRule "evenodd", ry "0", height "420", width "546", x "2", fill "#00f" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "matrix(1.1722 0 0 1.1426 -2 0)" ]
            [ Svg.path [ fill "#006400", d "M0 0h840v420H0z" ]
                []
            , Svg.path [ fill "#ffd200", d "M0 60h840v300H0z" ]
                []
            , Svg.path [ fill "#d40000", d "M0 120h840v180H0z" ]
                []
            , Svg.path [ d "M0 180h840v60H0z" ]
                []
            , Svg.path [ strokeWidth "20", stroke "#000", d "M0 0v420l280-210z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0v420l280-210z" ]
                []
            , Svg.path [ fill "#d40000", d "M107 104l55 171L17 170h179L51 275z" ]
                []
            , Svg.path [ id "b", d "M125 218c-3 0-5 2-5 5 0 5 5 7 8 4s1-9-3-9zm0 1c2 0 4 2 4 4 0 3-4 5-6 4-3-2-3-6 0-8a4 4 0 0 1 2 0z" ]
                []
            , use [ xlinkHref "#b", height "100%", width "100%", y "-1", x "-20" ]
                []
            , Svg.path [ d "M88 145a2 2 0 0 0-2 2 2 2 0 1 0 4 0 2 2 0 0 0-2-2zm0 1a1 1 0 0 1 1 1 1 1 0 1 1-2 0 1 1 0 0 1 1-1z" ]
                []
            ]
        ]
