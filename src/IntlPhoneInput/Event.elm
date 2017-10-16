module IntlPhoneInput.Event
    exposing
        ( batchKeyDown
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


batchKeyDown : List ( Int -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Attribute msg
batchKeyDown =
    batch "keydown"


batchKeyPress : List ( Int -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Attribute msg
batchKeyPress =
    batch "keypress"


batch : String -> List ( Int -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Attribute msg
batch event actions config (State state) phoneNumber =
    let
        oneOf =
            Json.Decode.oneOf (List.map toDecoderAction actions)

        toDecoderAction ( decoder, action ) =
            keyCode
                |> Json.Decode.andThen decoder
                |> Json.Decode.map action
    in
    onWithOptions
        event
        { preventDefault = True, stopPropagation = True }
        oneOf
        |> Html.Attributes.map (\action -> action config (State state) phoneNumber Cmd.none |> Action.done)
