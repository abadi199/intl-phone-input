module IntlPhoneInput.KeyCode
    exposing
        ( ArrowKey(..)
        , KeyCode(..)
        , KeyData
        , alphabetKey
        , alphabetKeyCodes
        , arrowKey
        , enterKey
        , escKey
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


enterKey : KeyData -> Json.Decode.Decoder KeyCode
enterKey keyData =
    case toKeyCode keyData of
        Result.Ok Enter ->
            Json.Decode.succeed Enter

        _ ->
            Json.Decode.fail "not an enter"


escKey : KeyData -> Json.Decode.Decoder KeyCode
escKey keyData =
    case toKeyCode keyData of
        Result.Ok Esc ->
            Json.Decode.succeed Esc

        _ ->
            Json.Decode.fail "not an escape"


alphabetKey : KeyData -> Json.Decode.Decoder KeyCode
alphabetKey keyData =
    case toKeyCode keyData of
        Result.Ok (Alphabet char) ->
            Json.Decode.succeed (Alphabet char)

        _ ->
            Json.Decode.fail "not alphabet"
