module IntlPhoneInput.Event
    exposing
        ( onKeyDown
        , onKeyPress
        )

import Html
import Html.Events exposing (keyCode, on, onWithOptions)
import IntlPhoneInput.KeyCode as KeyCode
import Json.Decode


onKeyDown : (Int -> msg) -> Html.Attribute msg
onKeyDown action =
    onWithOptions
        "keydown"
        { preventDefault = True, stopPropagation = True }
        (Json.Decode.map action filteredKeyCode)


onKeyPress : (Int -> msg) -> Html.Attribute msg
onKeyPress action =
    on "keypress" (Json.Decode.map action filteredKeyCode)


filteredKeyCode : Json.Decode.Decoder Int
filteredKeyCode =
    keyCode |> Json.Decode.andThen filterKeyCode


filterKeyCode : Int -> Json.Decode.Decoder Int
filterKeyCode keyCode =
    if List.member keyCode KeyCode.keyCodes then
        Json.Decode.succeed keyCode
    else
        Json.Decode.fail "don't handle these keys"
