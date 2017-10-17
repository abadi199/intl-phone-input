module IntlPhoneInput.Flag.PR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-37.298 0h682.67v512h-682.67z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(34.967) scale(.9375)" ]
            [ Svg.path [ fill "#ed0000", d "M-37.298 0h768v512h-768z" ]
                []
            , Svg.path [ fill "#fff", d "M-37.298 102.4h768v102.4h-768zM-37.298 307.2h768v102.4h-768z" ]
                []
            , Svg.path [ d "M-37.298 0l440.69 255.67-440.69 255.34V0z", fill "#0050f0" ]
                []
            , Svg.path [ d "M156.45 325.47l-47.447-35.432-47.214 35.78 17.56-58.144-47.128-35.904 58.305-.5L108.61 173.3l18.472 57.835 58.305.077-46.886 36.243 17.947 58.016z", fill "#fff" ]
                []
            ]
        ]
