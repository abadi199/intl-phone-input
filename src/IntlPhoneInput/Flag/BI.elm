module IntlPhoneInput.Flag.BI exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-91 0h683v512H-91z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "translate(85) scale(.9375)" ]
            [ Svg.path [ d "M-178 0l429 256-429 256zm858 0L251 256l429 256z", fill "#00cf00" ]
                []
            , Svg.path [ d "M-178 0l429 256L680 0zm0 512l429-256 429 256z", fill "red" ]
                []
            , Svg.path [ d "M680 0h-80l-778 464v48h80L680 48z", fill "#fff" ]
                []
            , Svg.path [ d "M399 256a148 148 0 1 1-296 0 148 148 0 0 1 296 0z", fill "#fff" ]
                []
            , Svg.path [ d "M-178 0v48l778 464h80v-48L-98 0z", fill "#fff" ]
                []
            , Svg.path [ stroke "#00de00", strokeWidth "4", fill "red", d "M280 200h-19l-10 17-10-17h-19l9-17-9-17h19l10-16 10 16h19l-9 17zm-65 112h-19l-10 17-10-17h-19l9-17-9-17h19l10-17 10 17h20l-10 17zm131 0h-19l-10 17-10-17h-19l9-17-9-17h19l10-17 10 17h19l-9 17z" ]
                []
            ]
        ]
