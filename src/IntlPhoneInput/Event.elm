module IntlPhoneInput.Event
    exposing
        ( onKeyDown
        , onKeyPress
        )

import Html
import Html.Events exposing (keyCode, on, onWithOptions)
import Json.Decode


onKeyDown : (Int -> msg) -> Html.Attribute msg
onKeyDown action =
    onWithOptions
        "keydown"
        { preventDefault = True, stopPropagation = True }
        (Json.Decode.map action keyCode)


onKeyPress : (Int -> msg) -> Html.Attribute msg
onKeyPress action =
    on "keypress" (Json.Decode.map action keyCode)
