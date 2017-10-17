module IntlPhoneInput.Flag.TC exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480", version "1" ]
        [ Svg.path [ d "M640 480V0H0v480h640z", fill "#006" ]
            []
        , Svg.path [ fillRule "evenodd", fill "#006", d "M0 0h374v232H0z" ]
            []
        , Svg.path [ d "M0 0v26l332 206h42v-26L42 0H0zm374 0v26L42 232H0v-26L332 0h42z", fill "#fff" ]
            []
        , Svg.path [ d "M156 0v232h62V0h-62zM0 77v78h374V77H0z", fill "#fff" ]
            []
        , Svg.path [ d "M0 93v46h374V93H0zM168 0v232h38V0h-38zM0 232l125-77h27L28 232H0zM0 0l125 77H97L0 17V0zm221 77L346 0h28L249 77h-28zm153 155l-125-77h28l97 60v17z", fill "#c00" ]
            []
        , Svg.path [ d "M613 212v80c0 66-26 126-103 163-76-37-102-97-102-163v-80h205z", fill "#fff" ]
            []
        , Svg.path [ d "M606 221v74c0 61-24 117-96 151-71-34-95-90-95-151v-74h191z", fill "#fdc300" ]
            []
        ]
