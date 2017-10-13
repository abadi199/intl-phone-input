module IntlPhoneInput.Event
    exposing
        ( onKeyDown
        , onKeyPress
        )

import Html
import Html.Events exposing (keyCode, on)
import Json.Decode


onKeyDown : (Int -> msg) -> Html.Attribute msg
onKeyDown action =
    on "keydown" (Json.Decode.map action keyCode)


onKeyPress : (Int -> msg) -> Html.Attribute msg
onKeyPress action =
    on "keypress" (Json.Decode.map action keyCode)
