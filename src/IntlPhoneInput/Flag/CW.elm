module IntlPhoneInput.Flag.CW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.path [ id "b", d "M0-1l.225.69H.95L.364.12l.225.69L0 .383-.588.81l.225-.692L-.95-.31h.725z" ]
                []
            , Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h682.67v512H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", transform "scale(.94)" ]
            [ Svg.path [ fill "#002b7f", d "M0 0h768v512H0z" ]
                []
            , Svg.path [ fill "#f9e814", d "M0 320h768v64H0z" ]
                []
            , use [ xlinkHref "#b", transform "scale(42.67)", height "9000", width "13500", y "2", x "2", fill "#fff" ]
                []
            , use [ xlinkHref "#b", transform "scale(56.9)", height "9000", width "13500", y "3", x "3", fill "#fff" ]
                []
            ]
        ]
