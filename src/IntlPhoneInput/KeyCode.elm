module IntlPhoneInput.KeyCode
    exposing
        ( KeyCode(..)
        , keyCodes
        , toKeyCode
        )


type KeyCode
    = Esc
    | Up
    | Down
    | Left
    | Right
    | Enter
    | Ignore


keyCodes : List Int
keyCodes =
    [ 27, 37, 38, 39, 40, 13 ]


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

        _ ->
            Ignore
