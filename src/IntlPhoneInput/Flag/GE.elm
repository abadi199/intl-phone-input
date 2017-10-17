module IntlPhoneInput.Flag.GE exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ Svg.path [ d "M0 0h640v480H0z", fill "#fff" ]
            []
        , Svg.path [ d "M272 0h96v480h-96z", fill "red" ]
            []
        , Svg.path [ d "M0 192h640v96H0z", fill "red" ]
            []
        , Svg.path [ Svg.Attributes.style "mix-blend-mode:multiply", d "M147 373c1-17 4-31 4-31l-15 1-15-1s3 14 4 31c-17-1-31-4-31-4l1 15-1 15s14-3 31-4c-1 17-4 31-4 31l15-1 15 1s-3-14-4-31c17 1 31 4 31 4l-1-15 1-15s-14 3-31 4zM515 85c1-17 4-31 4-31l-15 1-15-1s3 14 4 31c-17-1-31-4-31-4l1 15-1 15s14-3 31-4c-1 17-4 31-4 31l15-1 15 1s-3-14-4-31c17 1 31 4 31 4l-1-15 1-15s-14 3-31 4zm-368 0c1-17 4-31 4-31l-15 1-15-1s3 14 4 31c-17-1-31-4-31-4l1 15-1 15s14-3 31-4c-1 17-4 31-4 31l15-1 15 1s-3-14-4-31c17 1 31 4 31 4l-1-15 1-15s-14 3-31 4zm368 288c1-17 4-31 4-31l-15 1-15-1s3 14 4 31c-17-1-31-4-31-4l1 15-1 15s14-3 31-4c-1 17-4 31-4 31l15-1 15 1s-3-14-4-31c17 1 31 4 31 4l-1-15 1-15s-14 3-31 4z", fill "red", fillRule "evenodd" ]
            []
        ]
