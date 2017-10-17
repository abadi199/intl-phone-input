module IntlPhoneInput.Flag.CU exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-32 0h683v512H-32z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(30) scale(.94)" ]
            [ Svg.path [ fill "#0050f0", d "M-32 0h768v512H-32z" ]
                []
            , Svg.path [ fill "#fff", d "M-32 102h768v103H-32zm0 205h768v103H-32z" ]
                []
            , Svg.path [ d "M-32 0l441 256-441 255V0z", fill "#ed0000" ]
                []
            , Svg.path [ d "M162 325l-48-35-47 36 18-58-47-36 58-1 18-58 18 58h59l-47 36 18 58z", fill "#fff" ]
                []
            ]
        ]
