module IntlPhoneInput.Event exposing
    ( batchKeyDown
    , onBlur
    , onClickStopPropagation
    )

import Html.Styled
import Html.Styled.Attributes
import Html.Styled.Events exposing (on)
import IntlPhoneInput.Action as Action exposing (Action)
import IntlPhoneInput.Config exposing (Config)
import IntlPhoneInput.Internal as Internal exposing (FocusEvent, State(..))
import IntlPhoneInput.KeyCode as KeyCode exposing (KeyCode(..), KeyData)
import IntlPhoneInput.Type exposing (PhoneNumber)
import Json.Decode


stopProgragationAndPreventDefaultOn : String -> Json.Decode.Decoder msg -> Html.Styled.Attribute msg
stopProgragationAndPreventDefaultOn event decoder =
    Html.Styled.Events.custom event
        (decoder
            |> Json.Decode.map
                (\tagger ->
                    { message = tagger, stopPropagation = True, preventDefault = True }
                )
        )


onClickStopPropagation : msg -> Html.Styled.Attribute msg
onClickStopPropagation tagger =
    stopProgragationAndPreventDefaultOn
        "click"
        (Json.Decode.succeed tagger)


onBlur : State -> (FocusEvent -> msg) -> Html.Styled.Attribute msg
onBlur (State state) msg =
    let
        relatedTargetDecoder =
            case state.countryPickerState of
                Internal.CountryPickerClosed ->
                    Json.Decode.fail <| "country picker is closed"

                Internal.CountryPickerOpened ->
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


batchKeyDown : List ( KeyData -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Styled.Attribute msg
batchKeyDown =
    batch "keydown"


batchKeyPress : List ( KeyData -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Styled.Attribute msg
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


batch : String -> List ( KeyData -> Json.Decode.Decoder KeyCode, KeyCode -> Config msg -> State -> PhoneNumber -> Cmd msg -> Action msg ) -> Config msg -> State -> PhoneNumber -> Html.Styled.Attribute msg
batch event actions config (State state) phoneNumber =
    let
        oneOf =
            Json.Decode.oneOf (List.map toDecoderAction actions)

        toDecoderAction ( decoder, action ) =
            keyDataDecoder
                |> Json.Decode.andThen decoder
                |> Json.Decode.map action
    in
    stopProgragationAndPreventDefaultOn
        event
        oneOf
        |> Html.Styled.Attributes.map (\action -> action config (State state) phoneNumber Cmd.none |> Action.done)
