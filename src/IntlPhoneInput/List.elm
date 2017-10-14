module IntlPhoneInput.List
    exposing
        ( next
        , prev
        )


next : comparable -> List comparable -> comparable
next current list =
    case list of
        [] ->
            current

        head :: [] ->
            current

        head :: tail ->
            if head == current then
                List.head tail |> Maybe.withDefault current
            else
                next current tail


prev : comparable -> List comparable -> comparable
prev current list =
    case list of
        [] ->
            current

        head :: [] ->
            current

        head :: second :: tail ->
            if second == current then
                head
            else
                prev current (second :: tail)
