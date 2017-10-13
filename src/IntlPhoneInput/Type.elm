module IntlPhoneInput.Type
    exposing
        ( CountryData
        , PhoneNumber
        , emptyPhoneNumber
        )

import Svg exposing (Svg)


type alias PhoneNumber =
    { isoCode : String
    , phoneNumber : String
    }


emptyPhoneNumber : PhoneNumber
emptyPhoneNumber =
    { isoCode = "", phoneNumber = "" }


type alias CountryData msg =
    { name : String
    , dialCode : String
    , flag : Svg msg
    }
