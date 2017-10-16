module IntlPhoneInput.Flag.TV exposing (flag)

import Svg exposing (..)
import Svg.Attributes exposing (..)


path : List (Attribute msg) -> List (Svg msg) -> Svg msg
path =
    Svg.path


flag : Svg msg
flag =
    svg [ height "100%", width "100%", viewBox "0 0 640 480" ]
        [ defs []
            [ Svg.clipPath [ id "a" ]
                [ path [ fillOpacity ".67", d "M0 0h640v480H0z" ]
                    []
                ]
            ]
        , g [ Svg.Attributes.clipPath "url(#a)" ]
            [ g [ fillRule "evenodd", transform "matrix(.64508 0 0 .92059 0 23.331)", strokeWidth "1pt", fill "#009fca" ]
                [ path [ d "M505.97-19.81h486.16v515.87H505.97z" ]
                    []
                , rect [ ry "0", height "521.41", width "523.49", y "-25.343" ]
                    []
                ]
            , path [ fillRule "evenodd", fill "#fff", d "M.017 0h395.857v196.597H.017z" ]
                []
            , path [ d "M.016 0L0 14.757l94.465 48.539 35.543 1.029L.017 0z", fill "#c00" ]
                []
            , path [ d "M40.463 0l114.523 59.822V0H40.463z", fill "#006" ]
                []
            , path [ fill "#c00", d "M170.26 0v76.368H.018v43.639H170.26v76.367h52.385v-76.367H392.89V76.368H222.646V.001H170.26z" ]
                []
            , path [ d "M237.921 0v56.368L349.967.438 237.921 0z", fill "#006" ]
                []
            , path [ d "M241.462 62.513l31.514-.253L395.394.437l-32.49.53-121.442 61.546z", fill "#c00" ]
                []
            , path [ d "M.016 132.736v41.82l78.576-41.39-78.576-.435z", fill "#006" ]
                []
            , path [ d "M302.588 134.462l-32.755-.255 123.474 61.477-.813-14.065-89.904-47.157zm-271.884 62.25l115.774-60.777-30.407.2L.02 196.63", fill "#c00" ]
                []
            , path [ d "M394.55 17.271l-93.502 46.368 92.257.345v69.093H314.73l77.848 42.181 1.143 21.458-41.581-.497-113.8-55.869v56.366H155.4V140.35L48.65 196.565l-48.213.152v196.37h785.75V.347l-390.82-.34M.417 22.171L.002 62.954l82.722 1.037L.417 22.171z", fill "#006" ]
                []
            , g [ fillRule "evenodd", transform "matrix(.79241 0 0 .79977 .006 0)", fill "#009fca" ]
                [ path [ d "M496.06 0h496.06v496.06H496.06z" ]
                    []
                , rect [ rx "0", ry "0", height "251.45", width "525.79", y "244.61", x "-2.303" ]
                    []
                ]
            , g [ fillRule "evenodd", strokeWidth "1pt", fill "#fff40d" ]
                [ path [ d "M593.34 122.692l27.572-.018-22.32 15.232 8.54 24.674-22.293-15.27-22.293 15.266 8.544-24.67-22.316-15.24 27.571.026 8.498-24.684zM524.14 319.472l27.571-.019-22.32 15.233 8.54 24.673-22.293-15.269-22.293 15.266 8.544-24.67-22.316-15.24 27.571.026 8.498-24.685zM593.34 274.927l27.572-.018-22.32 15.232 8.54 24.673-22.293-15.269-22.293 15.266 8.544-24.67-22.316-15.24 27.571.026 8.498-24.684zM295.788 417.646l27.572-.019-22.32 15.233 8.54 24.673-22.293-15.269-22.293 15.266 8.544-24.67-22.317-15.24 27.572.026 8.498-24.684zM358.362 341.16l-27.572.018 22.32-15.232-8.54-24.674 22.293 15.27 22.293-15.266-8.544 24.67 22.316 15.24-27.571-.026-8.498 24.684zM439.668 228.716l-27.571.018 22.32-15.233-8.54-24.673 22.293 15.27 22.293-15.266-8.544 24.67 22.316 15.24-27.571-.026-8.498 24.684zM508.004 205.355l-27.572.018 22.32-15.232-8.54-24.674 22.293 15.27 22.293-15.266-8.544 24.67 22.316 15.24-27.571-.026-8.498 24.684zM439.668 399.972l-27.571.018 22.32-15.233-8.54-24.673 22.293 15.27 22.293-15.266-8.544 24.67 22.316 15.24-27.571-.026-8.498 24.684zM358.362 419.87l-27.572.018 22.32-15.233-8.54-24.673 22.293 15.269 22.293-15.266-8.544 24.67 22.316 15.24-27.571-.026-8.498 24.684z" ]
                    []
                ]
            ]
        ]
