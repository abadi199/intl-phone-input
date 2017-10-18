module IntlPhoneInput.KeyCode
    exposing
        ( ArrowKey(..)
        , KeyCode(..)
        , KeyData
        , alphabetKey
        , alphabetKeyCodes
        , arrowKey
          -- , backspaceKey
          -- , enterKey
          -- , escKey
        , key
        , toArrowKey
        , toKeyCode
        )

import Char
import Json.Decode


type KeyCode
    = Esc
    | Enter
    | Backspace
    | Spacebar
    | Alphabet Char
    | Arrow ArrowKey


type ArrowKey
    = Up
    | Down
    | Left
    | Right


type alias KeyData =
    { keyCode : Int
    , shiftKey : Bool
    , ctrlKey : Bool
    , altKey : Bool
    }


alphabetKeyCodes : List Int
alphabetKeyCodes =
    List.range 65 90


toArrowKey : KeyData -> Result String ArrowKey
toArrowKey keyData =
    case keyData.keyCode of
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


toKeyCode : KeyData -> Result String KeyCode
toKeyCode keyData =
    case keyData.keyCode of
        27 ->
            Result.Ok Esc

        13 ->
            Result.Ok Enter

        8 ->
            Result.Ok Backspace

        32 ->
            Result.Ok Spacebar

        _ ->
            if keyData.ctrlKey || keyData.altKey then
                Result.Err "alt or ctrl key is pressed"
            else if List.member keyData.keyCode alphabetKeyCodes then
                Char.fromCode keyData.keyCode
                    |> (if keyData.shiftKey then
                            Char.toUpper
                        else
                            Char.toLower
                       )
                    |> Alphabet
                    |> Result.Ok
            else
                Result.Err (toString keyData.keyCode ++ "is ignored")


arrowKey : KeyData -> Json.Decode.Decoder KeyCode
arrowKey keyData =
    case toArrowKey keyData of
        Result.Ok arrowKey ->
            Json.Decode.succeed (Arrow arrowKey)

        Result.Err err ->
            Json.Decode.fail err


key : KeyCode -> KeyData -> Json.Decode.Decoder KeyCode
key keyCode keyData =
    if toKeyCode keyData == Result.Ok keyCode then
        Json.Decode.succeed keyCode
    else
        Json.Decode.fail "ignore"


alphabetKey : KeyData -> Json.Decode.Decoder KeyCode
alphabetKey keyData =
    case toKeyCode keyData of
        Result.Ok (Alphabet char) ->
            Json.Decode.succeed (Alphabet char)

        _ ->
            Json.Decode.fail "not alphabet"
