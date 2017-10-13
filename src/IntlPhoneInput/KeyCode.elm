module IntlPhoneInput.KeyCode exposing (KeyCode(..), toKeyCode)


type KeyCode
    = Esc
    | Up
    | Down
    | Left
    | Right
    | Enter
    | Ignore


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

        _ ->
            Ignore
