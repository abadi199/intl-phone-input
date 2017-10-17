module IntlPhoneInput.Flag.BH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", strokeWidth "1pt", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#e10011", d "M-32.5 0h720v480h-720z" ]
                []
            , Svg.path [ d "M114.25 479.77L-32.5 480V0l146.06.075 94.242 30.306-93.554 29.542 93.554 30.458-93.554 29.542 93.554 30.458-93.554 29.54 93.554 30.46-93.554 29.54 93.554 30.46-93.554 29.54 93.554 30.46-93.554 29.54 93.554 30.46-93.554 29.54 93.554 30.46-93.554 29.54", fill "#fff" ]
                []
            ]
        ]
