module IntlPhoneInput.Flag.PN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-15-7h30V8h-30z" ]
                    []
                ]
            ]
        , Svg.path [ d "M0 0h640v480H0z", fill "#00247d" ]
            []
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(320 160) scale(21.33333)" ]
            [ circle [ r "20", fill "#00247d" ]
                []
            , Svg.path [ d "M-20-10l40 20m-40 0l40-20", stroke "#fff", strokeWidth "3" ]
                []
            , Svg.path [ d "M-20-10l40 20m-40 0l40-20", stroke "#cf142b", strokeWidth "2" ]
                []
            , Svg.path [ d "M0 0l20 10h-3L-3 0m3 0l20-10h3L3 0M0 0l-20 10h-3L-3 0m3 0l-20-10h3L3 0", fill "#fff" ]
                []
            , Svg.path [ d "M-20 0h40M0-10v20", stroke "#fff", strokeWidth "5" ]
                []
            , Svg.path [ d "M-20 0h40M0-10v20", stroke "#cf142b", strokeWidth "3" ]
                []
            ]
        ]
