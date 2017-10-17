module IntlPhoneInput.Flag.CL exposing (flag)

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
            [ Svg.path [ fill "#fff", d "M256 0h512v256H256z" ]
                []
            , Svg.path [ fill "#0039a6", d "M0 0h256v256H0z" ]
                []
            , Svg.path [ d "M168 192l-40-30-39 30 14-49-39-30h49l15-49 15 49h49l-39 30 15 49z", fill "#fff" ]
                []
            , Svg.path [ fill "#d52b1e", d "M0 256h768v256H0z" ]
                []
            ]
        ]
