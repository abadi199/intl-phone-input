module IntlPhoneInput.Flag.AO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "red", d "M0 0h640v244H0z" ]
                []
            , Svg.path [ d "M0 236h640v244H0z" ]
                []
            ]
        , Svg.path [ d "M229 148c165 43 59 256-72 167l-8 14c76 55 152 11 174-46 22-59-8-142-93-150l-1 15z", fillRule "evenodd", fill "#ffec00" ]
            []
        , Svg.path [ fillRule "evenodd", fill "#ffec00", d "M170 331l22 10-10 22-22-10zm149-100h24v24h-24zm-12-39l23-8 8 22-22 9zm-26-29l17-17 17 17-17 17zm-26-40l23 9-9 22-22-8zm61 147l22 9-9 22-22-9zm-70 70l22-9 10 22-22 9zm-39 3h24v24h-24zm41-116l-20-15-21 14 8-23-20-15h25l8-22 8 22h25l-20 15 7 24z" ]
            []
        , Svg.path [ d "M336 346l-10 19 4 1c14 4 20 9 26 17 3 3 7 3 10 1l7-5c3-5 2-8-2-11l-35-22z", fillRule "evenodd", fill "#fe0" ]
            []
        , Svg.path [ d "M365 373a4 4 0 1 1-8 0 4 4 0 0 1 8 0zm-21-14a4 4 0 1 1-9 0 4 4 0 0 1 9 0zm11 7a4 4 0 1 1-9 0 4 4 0 0 1 9 0z", fillRule "evenodd" ]
            []
        , Svg.path [ d "M324 364l-129-75c-19-12-20-34-8-50 2-2 3-2 4-1 1 9 6 17 11 22 45 28 88 56 132 86l-10 18z", fillRule "evenodd", fill "#fe0" ]
            []
        , Svg.path [ fillRule "evenodd", fill "#ffec00", d "M297 305l18 16-16 18-18-16z" ]
            []
        , Svg.path [ d "M332 349l-125-76m109 58l-42-27m18 43l-43-25", stroke "#000", strokeWidth "3", fill "none" ]
            []
        ]
