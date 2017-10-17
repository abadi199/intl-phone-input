module IntlPhoneInput.Flag.SB exposing (flag)

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
            [ Svg.path [ d "M0 507L987 0H0v507z", fill "#0000d6" ]
                []
            , Svg.path [ d "M1024 0L27 512h997V0z", fill "#006000" ]
                []
            , Svg.path [ d "M1024 0h-55L0 485v27h55l969-484V0z", fill "#fc0" ]
                []
            , Svg.path [ fill "#fff", d "M71 9l12 35h39L91 65l11 34-31-21-31 21 12-34-31-21h39zm192 0l11 35h39l-31 21 12 34-31-21-32 21 12-34-31-21h39zm0 145l11 34h39l-31 21 12 35-31-22-32 22 12-35-31-21h39zm-95-72l11 35h39l-31 21 12 34-31-21-32 21 12-34-31-21h39zm-97 72l12 34h39l-31 21 11 35-31-22-31 22 12-35-31-21h39z" ]
                []
            ]
        ]
