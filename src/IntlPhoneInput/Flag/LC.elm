module IntlPhoneInput.Flag.LC exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#65cfff", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ d "M318.9 41.991l162.66 395.3-322.6.91L318.9 41.991z", fill "#fff" ]
                []
            , Svg.path [ d "M319.09 96.516l140.67 339.99-278.99.78 138.32-340.77z" ]
                []
            , Svg.path [ d "M318.9 240.1l162.66 197.64-322.6.46L318.9 240.1z", fill "#ffce00" ]
                []
            ]
        ]
