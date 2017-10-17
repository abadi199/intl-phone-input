module IntlPhoneInput.Flag.BY exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ Svg.path [ d "M0 0h683v512H0z" ]
                    []
                ]
            ]
        , g [ fillRule "evenodd", Svg.Attributes.clipPath "url(#a)", transform "scale(.9376 .9375)" ]
            [ Svg.path [ fill "#b20000", d "M0 0h1024v340H0z" ]
                []
            , Svg.path [ fill "#429f00", d "M0 340h1024v172H0z" ]
                []
            , Svg.path [ fill "#fff", d "M0 0h113v512H0z" ]
                []
            , g [ fill "#b20000" ]
                [ Svg.path [ d "M5 9h6v8H5zm17 0h16v8H22zm5-9h5v9h-5zm27 0h5v9h-5zm22 9h16v8H76zm5-9h5v9h-5zM16 17h11v9H16zm16 0h11v9H32zm38 0h11v9H70zm16 0h11v9H86zm-75 9h11v9H11zm27 0h11v9H38zm27 0h11v9H65zm27 0h11v9H92zm11-17h5v8h-5zM5 35h11v8H5zm38 0h11v8H43zm54 0h11v8H97zM11 61h11v8H11zm5 8h11v9H16zm22-8h11v8H38zm-6 8h11v9H32zm-10 9h16v9H22zm5 9h5v8h-5zm38-26h11v8H65zm5 8h11v9H70zm22-8h11v8H92zm-6 8h11v9H86zm-10 9h16v9H76zm5 9h5v8h-5zm-27-9h5v9h-5zM0 78h5v9H0zm108 0h5v9h-5zm-81 43h5v9h-5zm-5 9h16v9H22zm-6 9h27v9H16zm65-18h5v9h-5zm-5 9h16v9H76zm-6 9h27v9H70zm6 43h27v9H76zm-11-34h38v8H65zm-54 0h38v8H11zm5 43h16v9H16zm-5-9h27v9H11zm75-17h27v9H86zm-5 26h16v9H81zm-59 9h5v8h-5zm64 0h6v8h-6zM0 165h27v9H0zm49 17h16v9H49zm5 9h5v9h-5zm-16-26h38v9H38zM59 35h11v8H59zm-10 8h16v9H49zm-6 9h11v9H43zm16 0h11v9H59zM0 43h11v9H0zm5 9h11v9H5zm98-9h10v9h-10zm-6 9h11v9H97zM0 130h5v9H0zm108 0h5v9h-5zm-59 70h16v8H49zm-6 8h11v9H43zm16 0h11v9H59zm-21 9h11v9H38zm27 0h11v9H65zm-33 9h11v8H32zm38 0h11v8H70zm-43 8h11v9H27zm49 0h10v9H76zm-60 9h16v9H16zm65 0h16v9H81zm11-9h11v9H92zm5-8h11v8H97zm6-9h10v9h-10zm-92 17h11v9H11zm-6-8h11v8H5zm-5-9h11v9H0zm22 35h5v8h-5zm64 0h6v8h-6zm-32-26h5v8h-5zm-16 26h5v8h-5zm32 0h6v8h-6zm-16 0h5v8h-5zm-54 0h5v8H0zm108 0h5v8h-5zM54 130h5v9h-5zM27 43h5v9h-5zm54 0h5v9h-5zm-32 61h16v9H49zm-11 9h16v8H38zm5 8h6v9h-6zm-11-17h11v9H32zm6-9h16v9H38zm5-8h6v8h-6zm16 8h17v9H59zm6-8h5v8h-5zm5 17h11v9H70zm-11 9h17v8H59zm6 8h5v9h-5zm21-17h11v9H86zm6-9h16v9H92zm11 9h10v9h-10zm-11 9h16v8H92zm5 8h6v9h-6zm0-34h6v8h-6zM0 104h11v9H0zm5-9h17v9H5zm11 9h11v9H16zm-11 9h17v8H5zm6 8h5v9h-5zm0-34h5v8h-5zm-6 69h22v9H5zm27 0h22v9H32zm27 0h22v9H59zm27 0h22v9H86zm-43 18h27v8H43zm-38 0h27v8H5zm76 0h27v8H81zm27 34h5v9h-5zM0 208h5v9H0zm5 295h6v-8H5zm17 0h16v-8H22zm5 9h5v-9h-5zm27 0h5v-9h-5zm22-9h16v-8H76zm5 9h5v-9h-5zm-65-17h11v-9H16zm16 0h11v-9H32zm38 0h11v-9H70zm16 0h11v-9H86zm-48-9h11v-9H38zm27 0h11v-9H65zm27 0h11v-9H92zm11 17h5v-8h-5zM5 477h11v-8H5zm38 0h11v-8H43zm54 0h11v-8H97zm-86-26h11v-8H11zm5-8h11v-9H16zm22 8h11v-8H38zm-6-8h11v-9H32zm-10-9h16v-9H22zm5-9h5v-8h-5zm38 26h11v-8H65zm5-8h11v-9H70zm22 8h11v-8H92zm-6-8h11v-9H86zm-10-9h16v-9H76zm5-9h5v-8h-5zm-27 9h5v-9h-5zm-54 0h5v-9H0zm108 0h5v-9h-5zm-81-43h5v-9h-5zm-5-9h16v-9H22zm-6-9h27v-9H16zm65 18h5v-9h-5zm-5-9h16v-9H76zm-6-9h27v-9H70zm6-43h27v-9H76zm-11 34h38v-8H65zm-54 0h38v-8H11zm5-43h16v-9H16zm-5 9h27v-9H11zm75 17h27v-9H86zm-5-26h16v-9H81zM0 347h27v-9H0zm49-17h16v-9H49zm5-9h5v-9h-5zm-16 26h38v-9H38zm21 130h11v-8H59zm-10-8h16v-9H49zm-6-9h11v-9H43zm16 0h11v-9H59zm-59 9h11v-9H0zm5-9h11v-9H5zm98 9h10v-9h-10zm-6-9h11v-9H97zM0 382h5v-9H0zm108 0h5v-9h-5zm-65-78h11v-9H43zm16 0h11v-9H59zm-21-9h11v-9H38zm27 0h11v-9H65zm-33-9h11v-8H32zm38 0h11v-8H70zm-43-8h11v-9H27zm49 0h10v-9H76zm-60-9h16v-9H16zm65 0h16v-9H81zm11 9h11v-9H92zm5 8h11v-8H97zm6 9h10v-9h-10zm-92-17h11v-9H11z" ]
                    []
                , Svg.path [ d "M5 286h11v-8H5zm-5 9h11v-9H0zm22-35h5v-8h-5zm32 26h5v-8h-5zm0 96h5v-9h-5zm-27 87h5v-9h-5zm54 0h5v-9h-5zm-32-61h16v-9H49zm-11-9h16v-8H38zm5-8h6v-9h-6zm-11 17h11v-9H32zm6 9h16v-9H38zm5 8h6v-8h-6zm16-8h17v-9H59zm6 8h5v-8h-5zm5-17h11v-9H70zm-11-9h17v-8H59zm6-8h5v-9h-5zm21 17h11v-9H86zm6 9h16v-9H92zm11-9h10v-9h-10zm-11-9h16v-8H92zm5-8h6v-9h-6zm0 34h6v-8h-6zM0 408h11v-9H0zm5 9h17v-9H5zm11-9h11v-9H16zm-11-9h17v-8H5zm6-8h5v-9h-5zm0 34h5v-8h-5zm-6-69h22v-9H5zm27 0h22v-9H32zm27 0h22v-9H59zm27 0h22v-9H86zm-43-18h27v-8H43zm-38 0h27v-8H5zm76 0h27v-8H81zm27-34h5v-9h-5zM0 304h5v-9H0zm49-44h5v9h-5zm10 0h6v9h-6zm0-17h6v9h-6zm-10 0h5v9h-5zM11 477h11v9H11zm75-165h6v-8h-6zm-64 0h5v-8h-5zm27-8h16v8H49z" ]
                    []
                ]
            ]
        ]
