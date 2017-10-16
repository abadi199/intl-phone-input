module IntlPhoneInput.Flag.TG exposing (flag)

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
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "scale(.9375)" ]
            [ Svg.path [ fill "#ffe300", d "M0 0h767.63v512H0z" ]
                []
            , Svg.path [ fill "#118600", d "M0 208.14h767.63v102.81H0zM0 .248h767.63v102.81H0z" ]
                []
            , Svg.path [ fill "#d80000", d "M0 .248h306.51v310.71H0z" ]
                []
            , Svg.path [ d "M134.42 128.43c0-.856 18.836-53.083 18.836-53.083l17.124 52.227s57.365 1.713 57.365.856-45.378 34.248-45.378 34.248 21.404 59.933 20.549 58.221c-.856-1.712-49.659-35.96-49.659-35.96s-49.658 34.248-48.802 34.248c.856 0 18.835-56.508 18.835-56.508l-44.522-33.392 55.652-.856z", fill "#fff" ]
                []
            , Svg.path [ fill "#118600", d "M0 409.19h767.63V512H0z" ]
                []
            ]
        ]
