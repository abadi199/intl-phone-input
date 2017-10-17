module IntlPhoneInput.Flag.DJ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-40 0h683v512H-40z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "translate(38) scale(.94)" ]
            [ Svg.path [ fill "#0c0", d "M-40 0h768v512H-40z" ]
                []
            , Svg.path [ fill "#69f", d "M-40 0h768v256H-40z" ]
                []
            , Svg.path [ d "M-40 0l383 256-383 255V0z", fill "#fffefe" ]
                []
            , Svg.path [ d "M120 292l-31-22-31 22 12-36-31-23h38l12-36 12 36h38l-31 23 12 36z", fill "red" ]
                []
            ]
        ]
