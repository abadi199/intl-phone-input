module IntlPhoneInput.Type exposing
    ( PhoneNumber, CountryData
    , emptyPhoneNumber
    )

{-| Contains all the data types used in IntlPhoneInput


# Types

@docs PhoneNumber, CountryData


# Helpers

@docs emptyPhoneNumber

-}


{-| Record type to hold the phone number and country ISO code
-}
type alias PhoneNumber =
    { isoCode : String
    , phoneNumber : String
    }


{-| Record type to hold country name and the dial code number.
This record is used by `Config` to hold the list of countries and their dial code.
-}
type alias CountryData =
    { name : String
    , dialCode : String
    }


{-| A constant for an empty phone number.
-}
emptyPhoneNumber : PhoneNumber
emptyPhoneNumber =
    { isoCode = "", phoneNumber = "" }
