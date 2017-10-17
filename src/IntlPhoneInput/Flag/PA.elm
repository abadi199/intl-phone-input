module IntlPhoneInput.Flag.PA exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#fff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#fff", d "M92 0h478v480H92z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#db0000", d "M323 4h358v221H323z" ]
                []
            , Svg.path [ fillRule "evenodd", fill "#0000ab", d "M3 225h320v255H3zm212-47l-42-30-42 30 16-48-42-30h52l15-48 17 48h51l-41 30 16 48z" ]
                []
            , Svg.path [ d "M517 414l-43-28-42 28 16-45-42-28 52-1 16-45 17 45h52l-42 28 16 46z", fillRule "evenodd", fill "#d80000" ]
                []
            ]
        ]
