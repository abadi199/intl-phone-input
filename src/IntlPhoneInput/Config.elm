module IntlPhoneInput.Config
    exposing
        ( Config
        , configWithId
        , configWithSeed
        , defaultConfig
        , getPhoneNumberInputId
        )

{-| Contains types and helper functions for working with configuration of IntlPhoneInput


# Config

@docs Config, defaultConfig, configWithId, configWithSeed


# Helper Functions

@docs getPhoneNumberInputId

-}

import Dict exposing (Dict)
import IntlPhoneInput.Config.Default as Default
import IntlPhoneInput.Internal exposing (State(..), initialState)
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber, emptyPhoneNumber)
import Murmur3
import String


{-| This record type holds all configuration of IntlPhoneInput.
-}
type alias Config msg =
    { hash : String
    , onChange : State -> PhoneNumber -> Cmd msg -> msg
    , namespace : String
    , countries : Dict String CountryData
    , countriesSorter : List ( String, CountryData ) -> List ( String, CountryData )
    , dialCodeFormatter : String -> String
    }


{-| Create the `Config` for your `intlPhoneInput` view function using the default configuration. You just need to specify your `Msg` to the function.

If you need to customize the `Config`, just use the record update to override the fields you want to change, e.g.:

    type Msg
        = PhoneUpdated State PhoneNumber (Cmd Msg)

    let
        baseConfig =
            defaultConfig PhoneUpdated
    in
    { baseConfig | dialCodeFormatter = \dialCode -> "(+" ++ dialCode ++ ")" }

-}
defaultConfig : (State -> PhoneNumber -> Cmd msg -> msg) -> Config msg
defaultConfig =
    configWithSeed defaultHashSeed


{-| Create the `Config` with a custom seed value. The seed is used to generate the hash value to generate 'unique' `Id` for some elements inside the `IntlPhoneInput`.

    type Msg
        = PhoneUpdated State PhoneNumber (Cmd Msg)

    config =
        baseConfig =
            configWithSeed 3876193 PhoneUpdated

-}
configWithSeed : Int -> (State -> PhoneNumber -> Cmd msg -> msg) -> Config msg
configWithSeed hashSeed onChange =
    { hash = Murmur3.hashString hashSeed (onChange initialState emptyPhoneNumber Cmd.none |> toString) |> toString
    , onChange = onChange
    , namespace = Default.namespace
    , countries = Default.countries
    , countriesSorter = defaultCountriesSorter
    , dialCodeFormatter = defaultDialCodeFormatter
    }


{-| Create the `Config` using a unique `id` value. This is an alternative to `configWithSeed` if you already have a unique id for your `IntlPhoneInput`.
This is usually useful when generating dynamic forms from database, where you can use the Id from the database table as the 'unique' Id.

    type Msg
        = PhoneUpdated State PhoneNumber (Cmd Msg)

    config =
        baseConfig =
            configWithId "219" PhoneUpdated

-}
configWithId : String -> (State -> PhoneNumber -> Cmd msg -> msg) -> Config msg
configWithId id onChange =
    { hash = id ++ (Murmur3.hashString defaultHashSeed (onChange initialState emptyPhoneNumber Cmd.none |> toString) |> toString)
    , onChange = onChange
    , namespace = "IntlPhoneInput"
    , countries = Default.countries
    , countriesSorter = defaultCountriesSorter
    , dialCodeFormatter = defaultDialCodeFormatter
    }



-- DEFAULT VALUES


defaultDialCodeFormatter : String -> String
defaultDialCodeFormatter dialCode =
    "+" ++ dialCode


defaultHashSeed : Int
defaultHashSeed =
    118999881999119


defaultCountriesSorter : List ( String, CountryData ) -> List ( String, CountryData )
defaultCountriesSorter countries =
    countries
        |> List.sortBy (Tuple.second >> .name)



-- HELPERS


{-| Helper function to get the `DOM id` of the phone number `<input>` element.
-}
getPhoneNumberInputId : Config msg -> String
getPhoneNumberInputId config =
    config.namespace ++ "PhoneNumberInput" ++ config.hash
