module IntlPhoneInput.Flag.CW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.path [ id "b", d "M0-1v1h1-1l1 1-1-1-1 1 1-1h-1 1z" ]
                []
            , Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h683v512H0z" ]
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
