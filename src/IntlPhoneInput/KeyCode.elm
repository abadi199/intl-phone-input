module IntlPhoneInput.KeyCode
    exposing
        ( ArrowKey(..)
        , KeyCode(..)
        , alphabetKeyCodes
        , arrowKey
        , enterKey
        , keyCodes
        , toArrowKey
        , toKeyCode
        )

import Char
import Json.Decode


type KeyCode
    = Esc
    | Enter
    | Backspace
    | Alphabet Char
    | Ignore
    | Arrow ArrowKey


type ArrowKey
    = Up
    | Down
    | Left
    | Right


keyCodes : List Int
keyCodes =
    [ 27, 37, 38, 39, 40, 13, 8 ] ++ alphabetKeyCodes


alphabetKeyCodes : List Int
alphabetKeyCodes =
    List.range 65 90


toArrowKey : Int -> Result String ArrowKey
toArrowKey keyCode =
    case keyCode of
        37 ->
            Result.Ok Left

        38 ->
            Result.Ok Up

        39 ->
            Result.Ok Right

        40 ->
            Result.Ok Down

        _ ->
            Result.Err "not arrow key"


toKeyCode : Int -> KeyCode
toKeyCode keyCode =
    case keyCode of
        27 ->
            Esc

        13 ->
            Enter

        8 ->
            Backspace

        _ ->
            if List.member keyCode alphabetKeyCodes then
                Alphabet (Char.fromCode keyCode)
            else
                Ignore


arrowKey : Int -> Json.Decode.Decoder KeyCode
arrowKey keyCode =
    case toArrowKey keyCode of
        Result.Ok arrowKey ->
            Json.Decode.succeed (Arrow arrowKey)

        Result.Err err ->
            Json.Decode.fail err


enterKey : Int -> Json.Decode.Decoder KeyCode
enterKey keyCode =
    case toKeyCode keyCode of
        Enter ->
            Json.Decode.succeed Enter

        _ ->
            Json.Decode.fail "not an enter"
