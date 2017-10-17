module IntlPhoneInput.Flag.SB exposing (flag)

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
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "scale(.9375)", strokeWidth "1pt" ]
            [ Svg.path [ d "M0 507.17L987.43 0H0v507.17z", fill "#0000d6" ]
                []
            , Svg.path [ d "M1024 0L27.17 512H1024V0z", fill "#006000" ]
                []
            , Svg.path [ d "M1024 0h-54.858L.002 485.36V512h54.857l969.14-484.4V.004z", fill "#fc0" ]
                []
            , Svg.path [ fill "#fff", d "M71.397 9.124l11.857 34.442 38.47-.026-31.143 21.254 11.916 34.426-31.105-21.305-31.106 21.3 11.922-34.421L21.07 43.53l38.47.036zM262.54 9.124l11.856 34.442 38.47-.026-31.143 21.254 11.916 34.426-31.105-21.305-31.106 21.3 11.922-34.421-31.138-21.264 38.47.036zM262.54 153.603l11.856 34.442 38.47-.026-31.143 21.254 11.916 34.426-31.105-21.305-31.106 21.3 11.922-34.421-31.138-21.264 38.47.036zM167.527 82.206l11.857 34.442 38.47-.026-31.143 21.254 11.916 34.426-31.105-21.305-31.106 21.3 11.922-34.421-31.138-21.264 38.47.036zM71.397 153.603l11.857 34.442 38.47-.026-31.143 21.254 11.916 34.426-31.105-21.305-31.106 21.3 11.922-34.421-31.138-21.264 38.47.036z" ]
                []
            ]
        ]