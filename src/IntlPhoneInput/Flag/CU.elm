module IntlPhoneInput.Flag.CU exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-32 0h682.67v512H-32z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(30) scale(.94)" ]
            [ Svg.path [ fill "#0050f0", d "M-32 0h768v512H-32z" ]
                []
            , Svg.path [ fill "#fff", d "M-32 102.4h768v102.4H-32zm0 204.8h768v102.4H-32z" ]
                []
            , Svg.path [ d "M-32 0l440.69 255.67L-32 511.01V0z", fill "#ed0000" ]
                []
            , Svg.path [ d "M161.75 325.47l-47.447-35.432-47.214 35.78 17.56-58.144-47.13-35.904 58.306-.5 18.084-57.97 18.472 57.836 58.305.077-46.886 36.243 17.948 58.016z", fill "#fff" ]
                []
            ]
        ]
