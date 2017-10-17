module IntlPhoneInput.Flag.CZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-74 0h682.67v512H-74z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(69.38) scale(.94)", strokeWidth "1pt" ]
            [ Svg.path [ fill "#e80000", d "M-74 0h768v512H-74z" ]
                []
            , Svg.path [ fill "#fff", d "M-74 0h768v256H-74z" ]
                []
            , Svg.path [ d "M-74 0l382.73 255.67L-74 511.01V0z", fill "#00006f" ]
                []
            ]
        ]
