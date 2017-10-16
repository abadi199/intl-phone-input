module ListTest exposing (..)

import Expect exposing (Expectation)
import Fuzz
import IntlPhoneInput.List
import Test exposing (..)


nextSuite : Test
nextSuite =
    describe "next"
        [ test "next of 888 is 889" <|
            \_ ->
                List.range 0 999
                    |> IntlPhoneInput.List.next 888
                    |> Expect.equal 889
        , test "next of last item is the item" <|
            \_ ->
                List.range 0 999
                    |> IntlPhoneInput.List.next 999
                    |> Expect.equal 999
        , fuzz currentMaxFuzzer "next of a is (a + 1)" <|
            \( current, max ) ->
                List.range 0 max
                    |> IntlPhoneInput.List.next current
                    |> Expect.equal
                        (if max == current then
                            current
                         else
                            current + 1
                        )
        ]


prevSuite : Test
prevSuite =
    describe "prev"
        [ test "prev of 888 is 887" <|
            \_ ->
                List.range 0 999
                    |> IntlPhoneInput.List.prev 888
                    |> Expect.equal 887
        , test "prev of first item is the item" <|
            \_ ->
                List.range 0 999
                    |> IntlPhoneInput.List.prev 0
                    |> Expect.equal 0
        , fuzz currentMaxFuzzer "prev of a is (a - 1)" <|
            \( current, max ) ->
                List.range 0 max
                    |> IntlPhoneInput.List.prev current
                    |> Expect.equal
                        (if current == 0 then
                            current
                         else
                            current - 1
                        )
        ]


currentMaxFuzzer : Fuzz.Fuzzer ( Int, Int )
currentMaxFuzzer =
    Fuzz.intRange 0 999999 |> Fuzz.andThen (\max -> Fuzz.intRange 0 max |> Fuzz.map (\current -> ( current, max )))
