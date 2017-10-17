module IntlPhoneInput.Flag.FM exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ fillOpacity ".67", d "M-81.333 0h682.67v512h-682.67z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(76.25) scale(.94)", strokeWidth "1pt" ]
            [ Svg.path [ fill "#6797d6", d "M-252 0H772v512H-252z" ]
                []
            , Svg.path [ fill "#fff", d "M259.787 122.985l-32.44 22.214 12.433-35.9-32.475-22.177 40.122.038 12.366-35.92 12.366 35.92 40.12-.026L279.8 109.3l12.43 35.905m-32.443 244.847l-32.44-22.214 12.433 35.9-32.475 22.176 40.122-.038 12.366 35.92 12.366-35.92 40.12.027-32.48-22.166 12.43-35.905m-188.384-92.465l-24.53 30.73 1.395-37.967-37.54-11.713 38.38-11.695 1.324-37.966 22.328 30.735 38.36-11.755-24.58 30.694 22.383 30.7m274.28-11.763l24.53 30.73-1.395-37.967 37.54-11.713-38.38-11.695-1.324-37.966-22.328 30.735-38.36-11.755 24.58 30.694-22.383 30.7" ]
                []
            ]
        ]
