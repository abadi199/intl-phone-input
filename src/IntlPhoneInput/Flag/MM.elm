module IntlPhoneInput.Flag.MM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.path [ id "a", transform "scale(8.844)", fill "#fff", d "M0-.5l.162.5h-.324z" ]
                []
            , g [ id "b" ]
                [ use [ xlinkHref "#a", transform "rotate(-144)", width "18", height "12" ]
                    []
                , use [ xlinkHref "#a", transform "rotate(-72)", width "18", height "12" ]
                    []
                , use [ xlinkHref "#a", width "18", height "12" ]
                    []
                , use [ xlinkHref "#a", transform "rotate(72)", width "18", height "12" ]
                    []
                , use [ xlinkHref "#a", transform "rotate(144)", width "18", height "12" ]
                    []
                ]
            ]
        , Svg.path [ d "M0-.1h640V160H0z", fill "#fecb00" ]
            []
        , Svg.path [ d "M0 320h640v160H0z", fill "#ea2839" ]
            []
        , Svg.path [ d "M0 160h640v160H0z", fill "#34b233" ]
            []
        , use [ xlinkHref "#b", x "9", y "6.422", width "18", height "12", transform "matrix(40 0 0 40 -40 0)" ]
            []
        ]
