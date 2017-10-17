module IntlPhoneInput.Flag.ET exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-61 0h682v512H-61z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "translate(57) scale(.94)" ]
            [ Svg.path [ fill "#ffc621", d "M-238 4H800v498H-238z" ]
                []
            , Svg.path [ fill "#ef2118", d "M-240 343H799v169H-240z" ]
                []
            , Svg.path [ fill "#298c08", d "M-238 0H800v180H-238z" ]
                []
            , ellipse [ cx "534", rx "200", cy "353", transform "matrix(.54 0 0 .54 -26 74)", ry "200", fill "#006bc6" ]
                []
            , Svg.path [ d "M214 188l-6 5 23 33 7-4-24-34zm30 78l-10-7 4-12h-48l-14-10 66-1 12-37 6 15-16 52zm76-71l-6-4-24 32 5 5 25-33zm-65 52l3-11h14l-16-46 6-16 21 62h39l-13 11h-54zm90 51l3-7-38-13-3 6 38 14zm-69-46h12l4 12 39-28h17l-53 39 12 37-14-8-17-52zm-19 102h7l1-41h-8v41zm21-80l4 11-10 8 39 27 5 17-54-38-31 23 3-16 44-32zm-103 13l3 7 38-12-2-7-39 12zm83-5l-9 8-11-8-14 46-14 10 19-63-31-23 16-1 44 31z", fill "#ffc621" ]
                []
            ]
        ]
