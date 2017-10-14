module IntlPhoneInput.KeyCode
    exposing
        ( KeyCode(..)
        , keyCodes
        , toKeyCode
        )

import Char


type KeyCode
    = Esc
    | Up
    | Down
    | Left
    | Right
    | Enter
    | Backspace
    | Alphabet Char
    | Ignore


keyCodes : List Int
keyCodes =
    [ 27, 37, 38, 39, 40, 13, 8 ] ++ alphabet


alphabet : List Int
alphabet =
    List.range 65 90


toKeyCode : Int -> KeyCode
toKeyCode keyCode =
    case keyCode of
        27 ->
            Esc

        37 ->
            Left

        38 ->
            Up

        39 ->
            Right

        40 ->
            Down

        13 ->
            Enter

        8 ->
            Backspace

        _ ->
            if List.member keyCode alphabet then
                Alphabet (Char.fromCode keyCode)
            else
                Ignore
