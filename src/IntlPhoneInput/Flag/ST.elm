module IntlPhoneInput.Flag.ST exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ fill "#12ad2b", d "M0 0h640v480H0z" ]
            []
        , Svg.path [ fill "#ffce00", d "M0 137h640v206H0z" ]
            []
        , Svg.path [ d "M0 0v480l240-240", fill "#d21034" ]
            []
        , g [ id "c", transform "translate(352 240) scale(.34286)" ]
            [ g [ id "b" ]
                [ Svg.path [ id "a", d "M0-200V0h100", transform "rotate(18 0 -200)" ]
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
        , use [ height "100%", width "100%", xlinkHref "#c", x "700", transform "translate(-523)" ]
            []
        ]
