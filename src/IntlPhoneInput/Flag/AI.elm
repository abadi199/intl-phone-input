module IntlPhoneInput.Flag.AI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fillRule "evenodd", fill "#fff", d "M0 0h403v240H0z" ]
                []
            , Svg.path [ d "M0 0v18l97 60 36 1L0 0z", fill "#c00" ]
                []
            , Svg.path [ d "M42 0l116 73V0H42z", fill "#006" ]
                []
            , Svg.path [ d "M174 0v94H0v53h174v93h53v-93h173V94H227V0h-53z", fill "#c00" ]
                []
            , Svg.path [ d "M242 0v69L356 1 242 0z", fill "#006" ]
                []
            , Svg.path [ d "M246 77l32-1L403 1l-33 1-124 75z", fill "#c00" ]
                []
            , Svg.path [ d "M401 21l-95 57h94v85h-80l79 51 1 26h-42l-116-69v69h-84v-69L49 240H0v240h800V0H402M0 27v50l84 1L0 27zm0 135v52l80-51-80-1z", fill "#006" ]
                []
            , Svg.path [ d "M308 165l-33-1 125 75v-17l-92-57zM32 241l117-75-31 1L0 241", fill "#c00" ]
                []
            , Svg.path [ d "M462 261c-1 28 0 59 4 88 5 16 4 24 11 33h99c6-10 11-25 11-31 6-29 6-62 6-92-10 6-23 9-36 8-10-1-19-3-30-10-9 6-13 9-28 9-13 1-22 2-37-5z", fill "#fff" ]
                []
            , Svg.path [ d "M478 382c7 15 32 50 51 49 18-1 39-35 47-49h-98z", fill "#0cf" ]
                []
            ]
        ]
