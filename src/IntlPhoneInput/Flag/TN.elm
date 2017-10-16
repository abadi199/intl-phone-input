module IntlPhoneInput.Flag.TN exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-85.333 0h682.67v512h-682.67z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(80) scale(.9375)" ]
            [ Svg.path [ fill "#e70013", d "M-128 0h768v512h-768z" ]
                []
            , Svg.path [ d "M385.808 255.773c0 71.316-57.813 129.129-129.129 129.129-71.317 0-129.13-57.814-129.13-129.13s57.814-129.129 129.13-129.129c71.317 0 129.13 57.814 129.13 129.13z", fill "#fff" ]
                []
            , Svg.path [ d "M256.68 341.41c-47.27 0-85.635-38.364-85.635-85.635s38.364-85.636 85.635-85.636c11.818 0 25.27 2.719 34.407 9.43-62.63 2.357-78.472 55.477-78.472 76.885s10.128 69.154 78.471 76.205c-7.777 5.013-22.588 8.75-34.406 8.75z", fill "#e70013" ]
                []
            , Svg.path [ fill "#e70013", d "M332.11 291.785l-38.89-14.18-25.72 32.417 1.477-41.356-38.787-14.45 39.798-11.373 1.744-41.356 23.12 34.338 39.87-11.116-25.504 32.594z" ]
                []
            ]
        ]
