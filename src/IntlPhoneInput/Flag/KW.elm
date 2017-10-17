module IntlPhoneInput.Flag.KW exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h683v512H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "scale(.9375)" ]
            [ Svg.path [ fill "#fff", d "M0 171h1024v170H0z" ]
                []
            , Svg.path [ fill "#f31830", d "M0 341h1024v171H0z" ]
                []
            , Svg.path [ fill "#00d941", d "M0 0h1024v171H0z" ]
                []
            , Svg.path [ d "M0 0v512l255-171 1-170L0 0z" ]
                []
            ]
        ]
