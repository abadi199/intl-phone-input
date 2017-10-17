module IntlPhoneInput.Flag.MH exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ g [ fillRule "evenodd" ]
            [ Svg.path [ fill "#3b5aa3", d "M0 0h640v480H0z" ]
                []
            , Svg.path [ d "M0 467L640 0v87L0 480v-13z", fill "#e2ae57" ]
                []
            , Svg.path [ d "M22 480l618-301V84L0 480h22zM175 15l-6 103-27-66 10 70-41-56 27 64-55-42 43 53-62-27 54 41-68-9 64 25-100 9 101 7-64 26 67-9-54 40 63-27-43 54 54-42-27 63 44-55-12 69 27-64 7 101 9-101 24 64-9-69 44 55-29-64 55 44-44-55 65 27-57-42 69 12-66-26 104-6-104-10 68-23-71 9 59-41-66 27 45-56-55 44 26-67-43 57 10-70-26 66-10-103z", fill "#fff" ]
                []
            ]
        ]
