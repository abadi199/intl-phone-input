module IntlPhoneInput.Flag.BR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#229e45", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ d "M321 436l302-196L320 44 17 241l304 195z", fill "#f8e509" ]
                []
            , Svg.path [ d "M453 240a127 127 0 1 1-255 0 127 127 0 0 1 255 0z", fill "#2b49a3" ]
                []
            , Svg.path [ d "M444 286c2-5 5-13 6-20-68-59-143-90-239-84l-8 21c113-11 196 39 241 83z", fill "#fff" ]
                []
            ]
        ]
