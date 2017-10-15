module IntlPhoneInput.Event
    exposing
        ( batch
          -- , onArrowKey
        , onKeyDown
        , onKeyPress
        )

import Html
import Html.Attributes
import Html.Events exposing (keyCode, on, onWithOptions)
import IntlPhoneInput.Action as Action exposing (Action)
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Internal exposing (State(..))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..))
import IntlPhoneInput.Type exposing (PhoneNumber)
import Json.Decode


onKeyDown : (Int -> msg) -> Html.Attribute msg
onKeyDown action =
    onWithOptions
        "keydown"
        { preventDefault = True, stopPropagation = True }
        (Json.Decode.map action (filterKeyCode allKeyCodes))


batch : List ( Int -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Attribute msg
batch actions config (State state) phoneNumber =
    let
        oneOf =
            Json.Decode.oneOf (List.map toDecoderAction actions)

        toDecoderAction ( decoder, action ) =
            keyCode
                |> Json.Decode.andThen decoder
                |> Json.Decode.map action
    in
    onWithOptions
        "keydown"
        { preventDefault = True, stopPropagation = True }
        oneOf
        |> Html.Attributes.map (\action -> action config (State state) phoneNumber Cmd.none |> Action.done)



-- onArrowKey : (KeyCode.ArrowKey -> msg) -> Html.Attribute msg
-- onArrowKey action =
--     onWithOptions
--         "keydown"
--         { preventDefault = True, stopPropagation = True }
--         (Json.Decode.map action (filterKeyCode arrowKeyCode))


onKeyPress : (Int -> msg) -> Html.Attribute msg
onKeyPress action =
    on "keypress" (Json.Decode.map action (filterKeyCode allKeyCodes))


filterKeyCode : (Int -> Json.Decode.Decoder key) -> Json.Decode.Decoder key
filterKeyCode filter =
    keyCode |> Json.Decode.andThen filter


allKeyCodes : Int -> Json.Decode.Decoder Int
allKeyCodes keyCode =
    if List.member keyCode KeyCode.keyCodes then
        Json.Decode.succeed keyCode
    else
        Json.Decode.fail "don't handle these keys"
