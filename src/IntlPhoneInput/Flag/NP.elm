module IntlPhoneInput.Flag.NP exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0-16h512v512H0z" ]
                    []
                ]
            ]
        , Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
            []
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(0 15) scale(.9375)" ]
            [ g [ fillRule "evenodd" ]
                [ Svg.path [ d "M7 490h378L137 238h258L7-9v499z", stroke "#000063", strokeWidth "14", fill "#ce0000" ]
                    []
                , Svg.path [ fill "#fff", d "M181 356l-27 9 21 20-29-2 12 26-25-12v28l-19-21-10 27-10-26-20 20 2-27-27 11 13-25-30 1 22-19-28-10 27-9-21-20 29 2-12-26 26 12-1-29 19 21 11-26 9 26 20-21-2 28 27-11-12 25 29-1-22 18zm-33-185l-11 9 6 4c13-10 23-20 30-36 2 21-17 69-68 70-55 0-74-51-72-71 10 18 16 27 32 37l5-5-11-8 14-4-7-12 14 1-2-15 13 7 4-13 9 11 8-10 5 14 12-9-2 15 14-2-6 13 13 4z" ]
                    []
                ]
            ]
        ]
