module IntlPhoneInput.Event
    exposing
        ( batchKeyDown
        )

import Html
import Html.Attributes
import Html.Events exposing (on, onWithOptions)
import IntlPhoneInput.Action as Action exposing (Action)
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Internal exposing (State(..))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..), KeyData)
import IntlPhoneInput.Type exposing (PhoneNumber)
import Json.Decode


batchKeyDown : List ( KeyData -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Attribute msg
batchKeyDown =
    batch "keydown"


batchKeyPress : List ( KeyData -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Attribute msg
batchKeyPress =
    batch "keypress"


keyDataDecoder : Json.Decode.Decoder KeyData
keyDataDecoder =
    Json.Decode.map4
        (\keyCode altKey shiftKey ctrlKey ->
            { keyCode = keyCode
            , altKey = altKey
            , shiftKey = shiftKey
            , ctrlKey = ctrlKey
            }
        )
        (Json.Decode.field "keyCode" Json.Decode.int)
        (Json.Decode.field "altKey" Json.Decode.bool)
        (Json.Decode.field "shiftKey" Json.Decode.bool)
        (Json.Decode.field "ctrlKey" Json.Decode.bool)


batch : String -> List ( KeyData -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Attribute msg
batch event actions config (State state) phoneNumber =
    let
        oneOf =
            Json.Decode.oneOf (List.map toDecoderAction actions)

        toDecoderAction ( decoder, action ) =
            keyDataDecoder
                |> Json.Decode.andThen decoder
                |> Json.Decode.map action
    in
    onWithOptions
        event
        { preventDefault = True, stopPropagation = True }
        oneOf
        |> Html.Attributes.map (\action -> action config (State state) phoneNumber Cmd.none |> Action.done)
