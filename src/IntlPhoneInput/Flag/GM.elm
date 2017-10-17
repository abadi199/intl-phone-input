module IntlPhoneInput.Flag.GM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0-48h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(0 48)" ]
            [ Svg.path [ fill "red", d "M0-128h640V85H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 85h640v36H0z" ]
                []
            , Svg.path [ fill "#009", d "M0 121h640v142H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 263h640v36H0z" ]
                []
            , Svg.path [ fill "#090", d "M0 299h640v213H0z" ]
                []
            ]
        ]
