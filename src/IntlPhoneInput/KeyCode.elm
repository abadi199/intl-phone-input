module IntlPhoneInput.KeyCode
    exposing
        ( ArrowKey(..)
        , KeyCode(..)
        , alphabetKey
        , alphabetKeyCodes
        , arrowKey
        , enterKey
        , escKey
          -- , keyCodes
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
    | Arrow ArrowKey


type ArrowKey
    = Up
    | Down
    | Left
    | Right


type KeyModifier
    = Shift
    | Ctrl
    | Alt


type alias KeyData =
    { keyCode : Int, modified : KeyModifier }


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


toKeyCode : Int -> Result String KeyCode
toKeyCode keyCode =
    case keyCode of
        27 ->
            Result.Ok Esc

        13 ->
            Result.Ok Enter

        8 ->
            Result.Ok Backspace

        _ ->
            if List.member keyCode alphabetKeyCodes then
                Result.Ok <| Alphabet (Char.fromCode keyCode)
            else
                Result.Err (toString keyCode ++ "is ignored")


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
        Result.Ok Enter ->
            Json.Decode.succeed Enter

        _ ->
            Json.Decode.fail "not an enter"


escKey : Int -> Json.Decode.Decoder KeyCode
escKey keyCode =
    case toKeyCode keyCode of
        Result.Ok Esc ->
            Json.Decode.succeed Esc

        _ ->
            Json.Decode.fail "not an escape"


alphabetKey : Int -> Json.Decode.Decoder KeyCode
alphabetKey keyCode =
    case toKeyCode keyCode of
        Result.Ok (Alphabet char) ->
            Json.Decode.succeed (Alphabet char)

        _ ->
            Json.Decode.fail "not alphabet"
