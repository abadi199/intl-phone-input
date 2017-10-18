module IntlPhoneInput.Type
    exposing
        ( CountryData
        , PhoneNumber
        , emptyPhoneNumber
        )


type alias PhoneNumber =
    { isoCode : String
    , phoneNumber : String
    }


emptyPhoneNumber : PhoneNumber
emptyPhoneNumber =
    { isoCode = "", phoneNumber = "" }


type alias CountryData =
    { name : String
    , dialCode : String
    }
