module IntlPhoneInput.Flag.LR exposing (flag)

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
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "scale(.9375)" ]
            [ Svg.path [ fill "#fff", d "M0 0h768v512H0z" ]
                []
            , Svg.path [ fill "#006", d "M0 0h233v233H0z" ]
                []
            , Svg.path [ fill "#c00", d "M0 465h768v47H0z" ]
                []
            , Svg.path [ fill "#c00", d "M0 465h768v47H0zm0-92h768v46H0zm0-94h766v47H0zM233 0h535v47H233zm0 186h535v47H233zm0-93h535v47H233z" ]
                []
            , Svg.path [ d "M166 177l-50-31-51 32 19-51-50-31 62-1 19-51 20 51h62l-50 32 19 50z", fill "#fff" ]
                []
            ]
        ]
