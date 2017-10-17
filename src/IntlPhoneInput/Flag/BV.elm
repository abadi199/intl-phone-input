module IntlPhoneInput.Flag.BV exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)" ]
            [ Svg.path [ fill "#fff", d "M-28 0h700v512H-28z" ]
                []
            , Svg.path [ fill "#d72828", d "M-53-78h219v276H-53zM289-1h381v199H289zM-28 320h191v190H-28zm320 2h378v188H292z" ]
                []
            , Svg.path [ fill "#003897", d "M197-25h64v535h-64z" ]
                []
            , Svg.path [ fill "#003897", d "M-28 225h698v63H-28z" ]
                []
            ]
        ]
