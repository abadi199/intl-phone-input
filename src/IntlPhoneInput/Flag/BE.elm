module IntlPhoneInput.Flag.BE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd", strokeWidth "1pt" ]
            [ Svg.path [ d "M0 0h213.335v479.997H0z" ]
                []
            , Svg.path [ fill "#ffd90c", d "M213.335 0H426.67v479.997H213.335z" ]
                []
            , Svg.path [ fill "#f31830", d "M426.67 0h213.335v479.997H426.67z" ]
                []
            ]
        ]
