module IntlPhoneInput.Flag.BA exposing (flag)

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
        , g [ Svg.Attributes.clipPath "url(#a)", transform "translate(80) scale(.9375)", fillRule "evenodd" ]
            [ Svg.path [ fill "#009", d "M-85 0h682v512H-85V0z" ]
                []
            , Svg.path [ fill "#FC0", d "M56 0l511 512V0H56z" ]
                []
            , Svg.path [ fill "#FFF", d "M440 482l-28-21-29 20 11-33-28-20h35l11-33 11 33h34l-27 21 10 33zm81 10h-35l-10-33-11 33h-35l28 20-11 33 29-20 28 21-11-33 28-21zM366 385l28-21h-35l-11-33-11 33h-35l28 20-10 34 28-21 28 21-10-33zm-65-65l28-20-35-1-10-33-11 33h-35l28 21-11 33 29-20 28 20-11-33zm-63-63l28-21h-35l-11-33-11 33h-35l28 20-10 33 28-20 28 21-10-33zm-65-65l28-20h-35l-11-34-10 34-35-1 28 21-11 33 29-20 28 20-11-33zm-63-64l27-20h-34L92 74l-11 34H46l28 20-11 33 29-20 28 20-10-33zM46 64l27-20H39L28 10 17 44h-35l28 20-11 33 29-20 28 20-10-33zM-18 0L9-20h-34l-11-34-11 34h-35l28 20-11 33 29-20 28 20-10-33z" ]
                []
            ]
        ]
