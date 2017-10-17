module IntlPhoneInput.Flag.CF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-12 32h640v480H-12z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "translate(12 -32)" ]
            [ Svg.path [ fill "#00f", d "M-52 32h719v119H-52z" ]
                []
            , Svg.path [ fill "#ff0", d "M-52 392h719v120H-52z" ]
                []
            , Svg.path [ fill "#009a00", d "M-52 271h719v121H-52z" ]
                []
            , Svg.path [ fill "#fff", d "M-52 151h719v120H-52z" ]
                []
            , Svg.path [ fill "red", d "M248 32h120v480H248z" ]
                []
            , Svg.path [ fill "#ff0", d "M99 138l-31-22-31 22 10-37-30-23 38-1 13-36 12 36 38 1-30 23" ]
                []
            ]
        ]
