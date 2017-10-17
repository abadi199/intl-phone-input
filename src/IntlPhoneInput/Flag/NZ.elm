module IntlPhoneInput.Flag.NZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ g [ id "b" ]
                [ g [ id "a" ]
                    [ Svg.path [ transform "translate(0 -.325)", d "M0 0v.5L1 0z" ]
                        []
                    , Svg.path [ transform "rotate(-36 .5 -.162)", d "M0 0v-.5L1 0z" ]
                        []
                    ]
                , use [ transform "scale(-1 1)", xlinkHref "#a" ]
                    []
                , use [ transform "rotate(72 0 0)", xlinkHref "#a" ]
                    []
                , use [ transform "rotate(-72 0 0)", xlinkHref "#a" ]
                    []
                , use [ transform "scale(-1 1) rotate(72)", xlinkHref "#a" ]
                    []
                ]
            , Svg.clipPath [ id "c" ]
                [ Svg.path [ d "M0 0h600v300H0z" ]
                    []
                ]
            , Svg.clipPath [ id "d" ]
                [ Svg.path [ d "M0 0l300 150H0zm300 0h300L300 150zm0 150h300v150zm0 0v150H0z" ]
                    []
                ]
            ]
        , Svg.path [ d "M.004 0h640v480h-640z", fill "#00247d", fillRule "evenodd" ]
            []
        , g [ transform "translate(-92.947 36.115) scale(.66825)" ]
            [ use [ fill "#fff", height "100%", width "100%", xlinkHref "#b", transform "matrix(45.4 0 0 45.4 900 120)" ]
                []
            , use [ fill "#cc142b", height "100%", width "100%", xlinkHref "#b", transform "matrix(30 0 0 30 900 120)" ]
                []
            ]
        , g [ transform "rotate(82 534.179 124.977) scale(.66825)" ]
            [ use [ fill "#fff", height "100%", width "100%", xlinkHref "#b", transform "rotate(-82 519.022 -457.666) scale(40.4)" ]
                []
            , use [ fill "#cc142b", height "100%", width "100%", xlinkHref "#b", transform "rotate(-82 519.022 -457.666) scale(25)" ]
                []
            ]
        , g [ transform "rotate(82 534.179 124.977) scale(.66825)" ]
            [ use [ fill "#fff", height "100%", width "100%", xlinkHref "#b", transform "rotate(-82 668.57 -327.666) scale(45.4)" ]
                []
            , use [ fill "#cc142b", height "100%", width "100%", xlinkHref "#b", transform "rotate(-82 668.57 -327.666) scale(30)" ]
                []
            ]
        , g [ transform "translate(-92.947 36.115) scale(.66825)" ]
            [ use [ fill "#fff", height "100%", width "100%", xlinkHref "#b", transform "matrix(50.4 0 0 50.4 900 480)" ]
                []
            , use [ fill "#cc142b", height "100%", width "100%", xlinkHref "#b", transform "matrix(35 0 0 35 900 480)" ]
                []
            ]
        , Svg.path [ Svg.Attributes.clipPath "url(#c)", d "M0 0l600 300M0 300L600 0", transform "matrix(.60681 0 0 .73139 .004 0)", stroke "#fff", strokeWidth "60" ]
            []
        , Svg.path [ Svg.Attributes.clipPath "url(#d)", d "M0 0l600 300M0 300L600 0", transform "matrix(.60681 0 0 .73139 .004 0)", stroke "#cc142b", strokeWidth "40" ]
            []
        , Svg.path
            [ Svg.Attributes.style "line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal"
            , Svg.Attributes.clipPath "url(#c)"
            , d "M151.707-.002v79.37H.004v60.68h151.703v79.37h60.682v-79.37h151.703v-60.68H212.389V-.003z"
            , color "#000"
            , fontWeight "400"
            , fontFamily "sans-serif"
            , overflow "visible"
            , fill "#fff"
            ]
            []
        , Svg.path
            [ Svg.Attributes.style "line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal"
            , d "M163.844.002v91.502H.004v36.408h163.84v91.502h36.408v-91.502h163.84V91.504h-163.84V.002z"
            , color "#000"
            , fontWeight "400"
            , fontFamily "sans-serif"
            , overflow "visible"
            , fill "#cc142b"
            ]
            []
        ]
