module IntlPhoneInput.Type
    exposing
        ( CountryData
        , PhoneNumber
        )

import Svg exposing (Svg)


type alias PhoneNumber =
    { isoCode : String
    , phoneNumber : String
    }


type alias CountryData msg =
    { name : String
    , dialCode : String
    , flag : Svg msg
    }
