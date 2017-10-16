module FilterTest exposing (..)

import Dict
import Expect exposing (Expectation)
import Html
import IntlPhoneInput.Filter as Filter
import Test exposing (..)


filterListSuite : Test
filterListSuite =
    describe "filterList"
        [ test "filter Ind" <|
            \_ ->
                -- Config.isoCodes
                [ ( "IN", { name = "Indonesia", dialCode = "62", flag = Html.text "" } )
                , ( "US", { name = "United States", dialCode = "62", flag = Html.text "" } )
                , ( "IR", { name = "Iran (\x202Bایران\x202C\x200E)", dialCode = "98", flag = Html.text "" } )
                ]
                    |> Filter.filterList "Ind"
                    |> List.map Tuple.first
                    |> Expect.equal [ "IN" ]
        , test "filter is case insensitive" <|
            \_ ->
                -- Config.isoCodes
                [ ( "IN", { name = "Indonesia", dialCode = "62", flag = Html.text "" } )
                , ( "US", { name = "United States", dialCode = "62", flag = Html.text "" } )
                , ( "IR", { name = "Iran (\x202Bایران\x202C\x200E)", dialCode = "98", flag = Html.text "" } )
                ]
                    |> Filter.filterList "ind"
                    |> List.map Tuple.first
                    |> Expect.equal [ "IN" ]
        ]
