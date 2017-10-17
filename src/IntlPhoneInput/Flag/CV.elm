module IntlPhoneInput.Flag.CV exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-123 0h682v512h-682z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(116) scale(.94)" ]
            [ Svg.path [ fill "#fff", d "M-123 233h846v206h-846z" ]
                []
            , Svg.path [ fill "#081873", d "M-123 0h846v257h-846zm0 386h853v126h-853z" ]
                []
            , Svg.path [ fill "#de3929", d "M-123 303h846v39h-846z" ]
                []
            , Svg.path [ fill "#ffce08", d "M131 399l7 21h21l-17 12 6 21-17-13-17 13 6-21-17-12h21m193-170l7 21h21l-17 13 6 20-17-13-18 13 7-20-17-13h21M88 335l7 21h21l-17 13 7 20-18-13-17 13 7-20-18-13h22m235-27l7 21h21l-17 13 6 20-17-13-18 13 7-20-17-13h21m-40-162l6 21h22l-17 12 6 21-17-13-18 13 7-21-17-12h21m-64-46l6 21h22l-18 13 7 20-17-13-18 13 7-20-17-13h21m-64 3l6 20h22l-18 13 7 20-17-12-18 12 7-20-18-13h22m-35 43l7 21h21l-17 13 7 20-18-13-17 13 6-20-17-13h22m119 149l6 21h22l-17 13 6 20-17-13-18 13 7-20-17-13h21m82-42l7 21h21l-17 12 7 21-18-13-17 13 6-21-17-12h22" ]
                []
            ]
        ]
