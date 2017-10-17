module IntlPhoneInput.Flag.TF exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.path [ d "M0-21l12 38-32-23h40l-32 23z", fill "#fff", id "a" ]
                []
            ]
        , Svg.path [ fill "#002395", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#fff", d "M0 0h293v197H0z" ]
            []
        , Svg.path [ fill "#002395", d "M0 0h96v192H0z" ]
            []
        , Svg.path [ fill "#ed2939", d "M192 0h96v192h-96z" ]
            []
        , Svg.path [ d "M426 220l15 24h44v86l-33-52-44 71h22l22-41 47 84 47-84 23 41h21l-44-71-33 52v-47h20l14-24h-34v-15h44l15-24H426zm52 105h-48v16h48zm91 0h-48v16h48z", fill "#fff" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", x "416", y "362", transform "scale(1.2)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", x "371", y "328", transform "scale(1.2)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", x "461", y "328", transform "scale(1.2)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", x "333", y "227", transform "scale(1.2)" ]
            []
        , use [ height "100%", width "100%", xlinkHref "#a", x "499", y "227", transform "scale(1.2)" ]
            []
        ]
