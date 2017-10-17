module IntlPhoneInput.Flag.FM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-81 0h682v512H-81z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(76) scale(.94)" ]
            [ Svg.path [ fill "#6797d6", d "M-252 0H772v512H-252z" ]
                []
            , Svg.path [ fill "#fff", d "M260 123l-33 22 13-36-33-22h40l13-36 12 36h40l-32 22 12 36m-32 245l-33-22 13 36-33 22h40l13 36 12-36h40l-32-22 12-36m-188-93l-25 31 2-38-38-12 39-11 1-38 22 30 39-11-25 30 22 31m275-12l24 31-1-38 37-12-38-11-1-38-23 30-38-11 25 30-23 31" ]
                []
            ]
        ]
