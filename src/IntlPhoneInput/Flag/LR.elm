module IntlPhoneInput.Flag.LR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h682.67v512H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "scale(.9375)" ]
            [ Svg.path [ fill "#fff", d "M0 .084h767.87v511.92H0z" ]
                []
            , Svg.path [ fill "#006", d "M0 0h232.74v232.75H0z" ]
                []
            , Svg.path [ fill "#c00", d "M0 464.87h767.89v47.127H0z" ]
                []
            , Svg.path [ fill "#c00", d "M0 465.43h767.89v46.574H0zM0 372.52h767.89v46.21H0zM0 279.26h765.96v46.7H0zM232.67.055h535.17v46.494H232.67zM232.67 186.06h535.17v46.796H232.67zM232.67 93.361h535.17v46.494H232.67z" ]
                []
            , Svg.path [ d "M166.35 177.47l-50.71-30.98-50.465 31.29 18.769-50.85-50.373-31.394 62.321-.438 19.328-50.691 19.744 50.574 62.321.067-50.115 31.693 19.184 50.732z", fill "#fff" ]
                []
            ]
        ]
