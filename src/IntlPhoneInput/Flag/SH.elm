module IntlPhoneInput.Flag.SH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ d "M640 480V0H0v480h640z", fill "#006" ]
            []
        , Svg.path [ d "M0 73h76L0 27V0h43l107 65V0h60v65L316 0h44v27l-76 46h76v74h-76l76 46v27h-44l-106-65v65h-60v-65L43 220H0v-27l76-46H0V73z", fill "#fff" ]
            []
        , Svg.path [ fill "#ce1126", d "M332 0L212 73h28L360 0h-28zm28 220l-120-73h29l91 56v17zM120 73L0 0v18l91 55h29zm0 74L0 220h29l120-73h-29z" ]
            []
        , Svg.path [ fill "#ce1126", d "M0 89h163V0h35v89h162v43H198v88h-35v-88H0V89z" ]
            []
        , Svg.path [ d "M400 641c0 16-3 34-24 42-21-8-24-26-24-42h48z", fill "#8fc5ff", transform "matrix(4.4862 0 0 4.4867 -1191 -2609)", stroke "#fff" ]
            []
        , Svg.path [ d "M376 683c9-4 15-9 19-16h-2l-23-3c-2-1-10 1-13 2 3 7 9 13 19 17z", fill "#366cc9", transform "matrix(4.4862 0 0 4.4867 -1191 -2609)", stroke "#000" ]
            []
        , Svg.path [ d "M400 641v-18c-8-3-19-4-24-4s-16 1-24 4v18h48z", transform "matrix(4.4862 0 0 4.4867 -1191 -2609)", stroke "#fff", fill "#ff0" ]
            []
        , Svg.path [ d "M494 210h-2l-3 1-3 2 1 2 1 1c-1 0-1 1 1 2h3v3l3 1 7 1v-1l-3-1v-3c1-1 2-1 1-3l-2-3c-2 0-2-2-3-3l-1 1z", fill "#ff0" ]
            []
        ]
