module IntlPhoneInput.Flag.PA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#fff", d "M92.462 0h477.19v480H92.462z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#db0000", d "M323.07 3.655h358v221.68h-358z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#0000ab", d "M3.227 225.33h319.87v254.66H3.227zM214.8 177.65l-41.959-29.326-41.754 29.614 15.529-48.124-41.677-29.716 51.562-.414 15.993-47.978 16.335 47.867 51.562.063-41.463 29.996 15.872 48.017z" ]
                []
            , Svg.path [ d "M516.85 413.89l-42.354-27.744-42.146 28.017 15.675-45.529-42.069-28.114 52.047-.392 16.143-45.391 16.489 45.286 52.047.06-41.853 28.379 16.021 45.428z", fillRule "evenodd", fill "#d80000" ]
                []
            ]
        ]
