module IntlPhoneInput.Flag.AG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", viewBox "0 0 640 480", width "100%" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ path [ d "M-79.698 0h682.67v512h-682.67z", Svg.Attributes.fillOpacity ".67" ]
                    []
                , text "    "
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", Svg.Attributes.fillRule "evenodd", transform "translate(74.717) scale(.9375)" ]
            [ path [ d "M-120 0h763.27v511.49H-120z", fill "#fff" ]
                []
            , text "    "
            , path [ d "M-118.31.617h760.88v216.09h-760.88z" ]
                []
            , text "    "
            , path [ d "M21.3 203.23h505.01v113.82H21.3z", fill "#0061ff" ]
                []
            , text "    "
            , path [ d "M642.75 1.753v510.25H262.03L642.75 1.753z", fill "#e20000" ]
                []
            , text "    "
            , path [ d "M-118.69 1.753v510.25h380.72L-118.69 1.753z", fill "#e20000" ]
                []
            , text "    "
            , path [ d "M440.37 203.34l-76.31-19.363L428.98 135l-79.726 11.39 41.003-69.475-70.616 41.003 12.53-80.867-47.837 63.783L264.97 26.8l-21.64 76.31-47.837-64.92 13.667 83.145-70.615-43.282 41.003 69.476-77.45-12.53 63.783 47.838-79.727 20.5h354.22z", fill "#ffd600" ]
                []
            , text "  "
            ]
        ]
