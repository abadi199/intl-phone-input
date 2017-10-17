module IntlPhoneInput.Flag.CL exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M0 0h682.67v512H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "scale(.9375)", fillOpacity ".996" ]
            [ Svg.path [ fill "#fff", d "M255.99 0H768v256H255.99z" ]
                []
            , Svg.path [ fill "#0039a6", d "M0 0h256v256H0z" ]
                []
            , Svg.path [ d "M167.82 191.71l-39.653-29.737-39.458 30.03 14.674-48.8-39.386-30.133 48.728-.42L127.84 64l15.437 48.537 48.728.064-39.184 30.418 15 48.69z", fill "#fff" ]
                []
            , Svg.path [ fill "#d52b1e", d "M0 256h768v256H0z" ]
                []
            ]
        ]
