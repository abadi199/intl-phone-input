module IntlPhoneInput.Flag.AG exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M-80 0h683v512H-80z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)", fillRule "evenodd", transform "translate(75) scale(.9375)" ]
            [ Svg.path [ fill "#fff", d "M-120 0h763v511h-763z" ]
                []
            , Svg.path [ d "M-118 1h761v216h-761z" ]
                []
            , Svg.path [ fill "#0061ff", d "M21 203h505v114H21z" ]
                []
            , Svg.path [ d "M643 2v510H262L643 2zm-762 0v510h381L-119 2z", fill "#e20000" ]
                []
            , Svg.path [ d "M440 203l-76-19 65-49-80 11 41-69-70 41 12-81-48 64-19-74-22 76-48-65 14 83-70-43 41 70-78-13 64 48-80 20h354z", fill "#ffd600" ]
                []
            ]
        ]
