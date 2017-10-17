module IntlPhoneInput.Flag.TZ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M10 0h160v120H10z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "matrix(4 0 0 4 -40 0)" ]
            [ Svg.path [ fill "#09f", d "M0 0h180v120H0z" ]
                []
            , Svg.path [ d "M0 0h180L0 120V0z", fill "#090" ]
                []
            , Svg.path [ d "M0 120h40l140-95V0h-40L0 95v25z" ]
                []
            , Svg.path [ d "M0 91L137 0h14L0 100v-9zm29 29L180 20v9L43 120H29z", fill "#ff0" ]
                []
            ]
        ]
