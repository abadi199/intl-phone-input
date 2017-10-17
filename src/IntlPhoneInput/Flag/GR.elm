module IntlPhoneInput.Flag.GR exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h120v90H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "scale(5.33)" ]
            [ Svg.path [ fill "#0d5eaf", d "M0 0h135v10H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 10h135v10H0z" ]
                []
            , Svg.path [ fill "#0d5eaf", d "M0 20h135v10H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 30h135v10H0z" ]
                []
            , Svg.path [ fill "#0d5eaf", d "M0 40h135v10H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 50h135v10H0z" ]
                []
            , Svg.path [ fill "#0d5eaf", d "M0 60h135v10H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 70h135v10H0z" ]
                []
            , Svg.path [ fill "#0d5eaf", d "M0 80h135v10H0zM0 0h50v50H0z" ]
                []
            , g [ fill "#fff" ]
                [ Svg.path [ d "M20 0h10v50H20z" ]
                    []
                , Svg.path [ d "M0 20h50v10H0z" ]
                    []
                ]
            ]
        ]
