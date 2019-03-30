module IntlPhoneInput.Config exposing
    ( Config, config
    , getPhoneNumberInputId
    )

{-| Contains types and helper functions for working with configuration of IntlPhoneInput


# Config

@docs Config, config


# Helper Functions

@docs getPhoneNumberInputId

-}

import Dict exposing (Dict)
import IntlPhoneInput.Config.Default as Default
import IntlPhoneInput.Internal exposing (State(..), initialState)
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber, emptyPhoneNumber)
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


{-| Create the `Config` using a unique `id` value. The `id` is necessary if you have more than one IntlPhoneInput on your page.

    type Msg
        = PhoneUpdated State PhoneNumber (Cmd Msg)

    homePhoneConfig =
        config "HomePhone" PhoneUpdated

-}
config : String -> (State -> PhoneNumber -> Cmd msg -> msg) -> Config msg
config id onChange =
    { hash = id
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
getPhoneNumberInputId configValue =
    configValue.namespace ++ "PhoneNumberInput" ++ configValue.hash
