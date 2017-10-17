module IntlPhoneInput.Flag.SO exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-85 0h682v512H-85z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "translate(80) scale(.9375)" ]
            [ Svg.path [ fill "#40a6ff", d "M-128 0h768v512h-768z" ]
                []
            , Svg.path [ d "M336 381l-82-53-82 54 30-88-82-54 102-1 31-87 32 87h102l-82 55 31 87z", fill "#fff" ]
                []
            ]
        ]
