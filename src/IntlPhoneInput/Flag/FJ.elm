module IntlPhoneInput.Flag.FJ exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ d "M0 0v480h640V0H0z", fill "#68bfe5" ]
            []
        , g [ strokeMiterlimit "5" ]
            [ Svg.path [ d "M421 193v137c0 44 80 71 80 71s81-27 81-71V193z", fill "#fff" ]
                []
            , Svg.path [ d "M490 241v62h-69v22h69v71l11 5 12-5v-71h69v-22h-69v-62z", fill "#d21034" ]
                []
            , Svg.path [ d "M421 193h161v53H421z", fill "#d21034" ]
                []
            , Svg.path [ d "M421 193v137c0 44 80 71 80 71s81-27 81-71V193z", fill "none", stroke "#000", strokeWidth "3" ]
                []
            ]
        , Svg.path [ d "M0 0v240h358V0H0z", fill "#002868" ]
            []
        , Svg.path [ Svg.Attributes.style "line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-Svg.Attributes.style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal", d "M0 0v27l139 93L0 213v27h40l139-93 139 93h40v-27l-139-93 139-93V0h-40L179 93 40 0H0z", color "#000", fontWeight "400", fontFamily "sans-serif", overflow "visible", fill "#fff" ]
            []
        , Svg.path [ d "M0 0v18l152 102L0 222v18h27l152-102 152 102h27v-18L206 120 358 18V0h-27L179 102 27 0H0z", Svg.Attributes.style "line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-Svg.Attributes.style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal", color "#000", fontWeight "400", fontFamily "sans-serif", overflow "visible", fill "#ce1126" ]
            []
        , Svg.path [ Svg.Attributes.style "line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-Svg.Attributes.style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal", d "M149 0v80H0v80h149v80h60v-80h149V80H209V0h-60z", color "#000", fontWeight "400", fontFamily "sans-serif", overflow "visible", fill "#fff" ]
            []
        , Svg.path [ Svg.Attributes.style "line-height:normal;text-indent:0;text-align:start;text-decoration-line:none;text-decoration-Svg.Attributes.style:solid;text-decoration-color:#000;text-transform:none;block-progression:tb;isolation:auto;mix-blend-mode:normal", d "M161 0v96H0v48h161v96h36v-96h161V96H197V0h-36z", color "#000", fontWeight "400", fontFamily "sans-serif", overflow "visible", fill "#ce1126" ]
            []
        ]
