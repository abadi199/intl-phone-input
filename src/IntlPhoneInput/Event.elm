module IntlPhoneInput.Event
    exposing
        ( batchKeyDown
        , onBlur
        , onClickStopPropagation
        )

import Html
import Html.Attributes
import Html.Events exposing (on, onWithOptions)
import IntlPhoneInput.Action as Action exposing (Action)
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Internal exposing (FocusEvent, State(..))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..), KeyData)
import IntlPhoneInput.Type exposing (PhoneNumber)
import Json.Decode


onClickStopPropagation : msg -> Html.Attribute msg
onClickStopPropagation tagger =
    onWithOptions
        "click"
        { stopPropagation = True, preventDefault = False }
        (Json.Decode.succeed tagger)


onBlur : (FocusEvent -> msg) -> Html.Attribute msg
onBlur msg =
    let
        relatedTargetDecoder =
            Json.Decode.oneOf
                [ Json.Decode.at [ "relatedTarget", "id" ] (Json.Decode.nullable Json.Decode.string)
                , Json.Decode.field "relatedTarget" (Json.Decode.null Nothing)
                ]
    in
    on
        "blur"
        (Json.Decode.map
            (\targetId -> { relatedTargetId = targetId })
            relatedTargetDecoder
            |> Json.Decode.map msg
        )


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
