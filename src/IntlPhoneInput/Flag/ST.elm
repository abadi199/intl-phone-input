module IntlPhoneInput.Flag.ST exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ path [ fill "#12ad2b", d "M0 0h640v480H0z" ]
            []
        , path [ fill "#ffce00", d "M0 137.143h640v205.714H0z" ]
            []
        , path [ d "M0 0v480l240-240", fill "#d21034" ]
            []
        , g [ id "c", transform "matrix(.34286 0 0 .34286 351.595 240)" ]
            [ g [ id "b" ]
                [ path [ id "a", d "M0-200V0h100", transform "rotate(18 0 -200)" ]
                    []
                , use [ height "100%", width "100%", xlinkHref "#a", transform "scale(-1 1)" ]
                    []
                ]
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(72)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(144)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-144)" ]
                []
            , use [ height "100%", width "100%", xlinkHref "#b", transform "rotate(-72)" ]
                []
            ]
        , use [ height "100%", width "100%", xlinkHref "#c", x "700", transform "translate(-523.19)" ]
            []
        ]
