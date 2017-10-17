module IntlPhoneInput.Flag.TW exposing (flag)

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
            [ Svg.path [ fill "#de2110", d "M0 0h768v512H0z" ]
                []
            , Svg.path [ fill "#08399c", d "M0 0h386v256H0z" ]
                []
            , Svg.path [ fill "#fff", d "M282 179l-47-10 10 47-36-32-15 46-15-46-36 32 9-47-47 10 32-36-46-15 46-15-32-36 47 10-10-47 36 32 15-46 15 45 36-32-10 47 48-10-32 37 46 14-46 16z" ]
                []
            , Svg.path [ fill "#005387", d "M238 175l-14 8-15 8h-34l-14-9-15-8-8-15-9-15 1-16v-17l9-15 8-14 15-8 15-9 16 1 17-1 15 9 15 9 7 15 9 14v34l-9 14z" ]
                []
            , Svg.path [ d "M245 128a52 52 0 1 1-104 0 52 52 0 0 1 104 0z", fill "#fff" ]
                []
            ]
        ]
