module IntlPhoneInput.Flag.PR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-37 0h682v512H-37z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(35) scale(.9375)" ]
            [ Svg.path [ fill "#ed0000", d "M-37 0h768v512H-37z" ]
                []
            , Svg.path [ fill "#fff", d "M-37 102h768v103H-37zm0 205h768v103H-37z" ]
                []
            , Svg.path [ d "M-37 0l440 256-440 255V0z", fill "#0050f0" ]
                []
            , Svg.path [ d "M156 325l-47-35-47 36 17-58-47-36 59-1 18-58 18 58h58l-46 36 17 58z", fill "#fff" ]
                []
            ]
        ]
