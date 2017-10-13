module IntlPhoneInput.Config
    exposing
        ( Config
        , defaultConfig
        , getCountryElementId
        , getPhoneNumberInputId
        )

import Dict exposing (Dict)
import IntlPhoneInput.Internal exposing (State, initialState)
import IntlPhoneInput.Svg as Svg
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber, emptyPhoneNumber)
import Murmur3


type alias Config msg =
    { hash : String
    , onChange : State -> PhoneNumber -> msg
    , namespace : String
    , countries : Dict String (CountryData msg)
    }


defaultHashSeed : Int
defaultHashSeed =
    118999881999119


defaultConfig : (State -> PhoneNumber -> msg) -> Config msg
defaultConfig =
    configWithSeed defaultHashSeed


configWithSeed : Int -> (State -> PhoneNumber -> msg) -> Config msg
configWithSeed hashSeed onChange =
    { hash = Murmur3.hashString hashSeed (onChange initialState emptyPhoneNumber |> toString) |> toString
    , onChange = onChange
    , namespace = "IntlPhoneInput"
    , countries = countries
    }


getPhoneNumberInputId : Config msg -> String
getPhoneNumberInputId config =
    config.namespace ++ "_PhoneNumberInput_" ++ config.hash


getCountryElementId : Config msg -> String -> String
getCountryElementId config isoCode =
    config.namespace ++ "_Country_" ++ isoCode ++ "_" ++ config.hash


countries : Dict String (CountryData msg)
countries =
    isoCodes
        |> List.map toCountryData
        |> Dict.fromList


toCountryData : String -> ( String, CountryData msg )
toCountryData isoCode =
    case isoCode of
        "AF" ->
            ( isoCode, { name = "Afghanistan (\x202Bافغانستان\x202C\x200E)", dialCode = "93", flag = Svg.flag isoCode } )

        "AL" ->
            ( isoCode, { name = "Albania (Shqipëri)", dialCode = "355", flag = Svg.flag isoCode } )

        "DZ" ->
            ( isoCode, { name = "Algeria (\x202Bالجزائر\x202C\x200E)", dialCode = "213", flag = Svg.flag isoCode } )

        "AS" ->
            ( isoCode, { name = "American Samoa", dialCode = "1684", flag = Svg.flag isoCode } )

        "AD" ->
            ( isoCode, { name = "Andorra", dialCode = "376", flag = Svg.flag isoCode } )

        "AO" ->
            ( isoCode, { name = "Angola", dialCode = "244", flag = Svg.flag isoCode } )

        "AI" ->
            ( isoCode, { name = "Anguilla", dialCode = "1264", flag = Svg.flag isoCode } )

        "AG" ->
            ( isoCode, { name = "Antigua and Barbuda", dialCode = "1268", flag = Svg.flag isoCode } )

        "AR" ->
            ( isoCode, { name = "Argentina", dialCode = "54", flag = Svg.flag isoCode } )

        "AM" ->
            ( isoCode, { name = "Armenia (Հայաստան)", dialCode = "374", flag = Svg.flag isoCode } )

        "AW" ->
            ( isoCode, { name = "Aruba", dialCode = "297", flag = Svg.flag isoCode } )

        "AU" ->
            ( isoCode, { name = "Australia", dialCode = "61", flag = Svg.flag isoCode } )

        "AT" ->
            ( isoCode, { name = "Austria (Österreich)", dialCode = "43", flag = Svg.flag isoCode } )

        "AZ" ->
            ( isoCode, { name = "Azerbaijan (Azərbaycan)", dialCode = "994", flag = Svg.flag isoCode } )

        "BS" ->
            ( isoCode, { name = "Bahamas", dialCode = "1242", flag = Svg.flag isoCode } )

        "BH" ->
            ( isoCode, { name = "Bahrain (\x202Bالبحرين\x202C\x200E)", dialCode = "973", flag = Svg.flag isoCode } )

        "BD" ->
            ( isoCode, { name = "Bangladesh (বাংলাদেশ)", dialCode = "880", flag = Svg.flag isoCode } )

        "BB" ->
            ( isoCode, { name = "Barbados", dialCode = "1246", flag = Svg.flag isoCode } )

        "BY" ->
            ( isoCode, { name = "Belarus (Беларусь)", dialCode = "375", flag = Svg.flag isoCode } )

        "BE" ->
            ( isoCode, { name = "Belgium (België)", dialCode = "32", flag = Svg.flag isoCode } )

        "BZ" ->
            ( isoCode, { name = "Belize", dialCode = "501", flag = Svg.flag isoCode } )

        "BJ" ->
            ( isoCode, { name = "Benin (Bénin)", dialCode = "229", flag = Svg.flag isoCode } )

        "BM" ->
            ( isoCode, { name = "Bermuda", dialCode = "1441", flag = Svg.flag isoCode } )

        "BT" ->
            ( isoCode, { name = "Bhutan (འབྲུག)", dialCode = "975", flag = Svg.flag isoCode } )

        "BO" ->
            ( isoCode, { name = "Bolivia", dialCode = "591", flag = Svg.flag isoCode } )

        "BA" ->
            ( isoCode, { name = "Bosnia and Herzegovina (Босна и Херцеговина)", dialCode = "387", flag = Svg.flag isoCode } )

        "BW" ->
            ( isoCode, { name = "Botswana", dialCode = "267", flag = Svg.flag isoCode } )

        "BR" ->
            ( isoCode, { name = "Brazil (Brasil)", dialCode = "55", flag = Svg.flag isoCode } )

        "IO" ->
            ( isoCode, { name = "British Indian Ocean Territory", dialCode = "246", flag = Svg.flag isoCode } )

        "VG" ->
            ( isoCode, { name = "British Virgin Islands", dialCode = "1284", flag = Svg.flag isoCode } )

        "BN" ->
            ( isoCode, { name = "Brunei", dialCode = "673", flag = Svg.flag isoCode } )

        "BG" ->
            ( isoCode, { name = "Bulgaria (България)", dialCode = "359", flag = Svg.flag isoCode } )

        "BF" ->
            ( isoCode, { name = "Burkina Faso", dialCode = "226", flag = Svg.flag isoCode } )

        "BI" ->
            ( isoCode, { name = "Burundi (Uburundi)", dialCode = "257", flag = Svg.flag isoCode } )

        "KH" ->
            ( isoCode, { name = "Cambodia (កម្ពុជា)", dialCode = "855", flag = Svg.flag isoCode } )

        "CM" ->
            ( isoCode, { name = "Cameroon (Cameroun)", dialCode = "237", flag = Svg.flag isoCode } )

        "CA" ->
            ( isoCode, { name = "Canada", dialCode = "1", flag = Svg.flag isoCode } )

        "CV" ->
            ( isoCode, { name = "Cape Verde (Kabu Verdi)", dialCode = "238", flag = Svg.flag isoCode } )

        "BQ" ->
            ( isoCode, { name = "Caribbean Netherlands", dialCode = "599", flag = Svg.flag isoCode } )

        "KY" ->
            ( isoCode, { name = "Cayman Islands", dialCode = "1345", flag = Svg.flag isoCode } )

        "CF" ->
            ( isoCode, { name = "Central African Republic (République centrafricaine)", dialCode = "236", flag = Svg.flag isoCode } )

        "TD" ->
            ( isoCode, { name = "Chad (Tchad)", dialCode = "235", flag = Svg.flag isoCode } )

        "CL" ->
            ( isoCode, { name = "Chile", dialCode = "56", flag = Svg.flag isoCode } )

        "CN" ->
            ( isoCode, { name = "China (中国)", dialCode = "86", flag = Svg.flag isoCode } )

        "CX" ->
            ( isoCode, { name = "Christmas Island", dialCode = "61", flag = Svg.flag isoCode } )

        "CC" ->
            ( isoCode, { name = "Cocos (Keeling) Islands", dialCode = "61", flag = Svg.flag isoCode } )

        "CO" ->
            ( isoCode, { name = "Colombia", dialCode = "57", flag = Svg.flag isoCode } )

        "KM" ->
            ( isoCode, { name = "Comoros (\x202Bجزر القمر\x202C\x200E)", dialCode = "269", flag = Svg.flag isoCode } )

        "CD" ->
            ( isoCode, { name = "Congo (DRC) (Jamhuri ya Kidemokrasia ya Kongo)", dialCode = "243", flag = Svg.flag isoCode } )

        "CG" ->
            ( isoCode, { name = "Congo (Republic) (Congo-Brazzaville)", dialCode = "242", flag = Svg.flag isoCode } )

        "CK" ->
            ( isoCode, { name = "Cook Islands", dialCode = "682", flag = Svg.flag isoCode } )

        "CR" ->
            ( isoCode, { name = "Costa Rica", dialCode = "506", flag = Svg.flag isoCode } )

        "CI" ->
            ( isoCode, { name = "Côte d’Ivoire", dialCode = "225", flag = Svg.flag isoCode } )

        "HR" ->
            ( isoCode, { name = "Croatia (Hrvatska)", dialCode = "385", flag = Svg.flag isoCode } )

        "CU" ->
            ( isoCode, { name = "Cuba", dialCode = "53", flag = Svg.flag isoCode } )

        "CW" ->
            ( isoCode, { name = "Curaçao", dialCode = "599", flag = Svg.flag isoCode } )

        "CY" ->
            ( isoCode, { name = "Cyprus (Κύπρος)", dialCode = "357", flag = Svg.flag isoCode } )

        "CZ" ->
            ( isoCode, { name = "Czech Republic (Česká republika)", dialCode = "420", flag = Svg.flag isoCode } )

        "DK" ->
            ( isoCode, { name = "Denmark (Danmark)", dialCode = "45", flag = Svg.flag isoCode } )

        "DJ" ->
            ( isoCode, { name = "Djibouti", dialCode = "253", flag = Svg.flag isoCode } )

        "DM" ->
            ( isoCode, { name = "Dominica", dialCode = "1767", flag = Svg.flag isoCode } )

        "DO" ->
            ( isoCode, { name = "Dominican Republic (República Dominicana)", dialCode = "1", flag = Svg.flag isoCode } )

        "EC" ->
            ( isoCode, { name = "Ecuador", dialCode = "593", flag = Svg.flag isoCode } )

        "EG" ->
            ( isoCode, { name = "Egypt (\x202Bمصر\x202C\x200E)", dialCode = "20", flag = Svg.flag isoCode } )

        "SV" ->
            ( isoCode, { name = "El Salvador", dialCode = "503", flag = Svg.flag isoCode } )

        "GQ" ->
            ( isoCode, { name = "Equatorial Guinea (Guinea Ecuatorial)", dialCode = "240", flag = Svg.flag isoCode } )

        "ER" ->
            ( isoCode, { name = "Eritrea", dialCode = "291", flag = Svg.flag isoCode } )

        "EE" ->
            ( isoCode, { name = "Estonia (Eesti)", dialCode = "372", flag = Svg.flag isoCode } )

        "ET" ->
            ( isoCode, { name = "Ethiopia", dialCode = "251", flag = Svg.flag isoCode } )

        "FK" ->
            ( isoCode, { name = "Falkland Islands (Islas Malvinas)", dialCode = "500", flag = Svg.flag isoCode } )

        "FO" ->
            ( isoCode, { name = "Faroe Islands (Føroyar)", dialCode = "298", flag = Svg.flag isoCode } )

        "FJ" ->
            ( isoCode, { name = "Fiji", dialCode = "679", flag = Svg.flag isoCode } )

        "FI" ->
            ( isoCode, { name = "Finland (Suomi)", dialCode = "358", flag = Svg.flag isoCode } )

        "FR" ->
            ( isoCode, { name = "France", dialCode = "33", flag = Svg.flag isoCode } )

        "GF" ->
            ( isoCode, { name = "French Guiana (Guyane française)", dialCode = "594", flag = Svg.flag isoCode } )

        "PF" ->
            ( isoCode, { name = "French Polynesia (Polynésie française)", dialCode = "689", flag = Svg.flag isoCode } )

        "GA" ->
            ( isoCode, { name = "Gabon", dialCode = "241", flag = Svg.flag isoCode } )

        "GM" ->
            ( isoCode, { name = "Gambia", dialCode = "220", flag = Svg.flag isoCode } )

        "GE" ->
            ( isoCode, { name = "Georgia (საქართველო)", dialCode = "995", flag = Svg.flag isoCode } )

        "DE" ->
            ( isoCode, { name = "Germany (Deutschland)", dialCode = "49", flag = Svg.flag isoCode } )

        "GH" ->
            ( isoCode, { name = "Ghana (Gaana)", dialCode = "233", flag = Svg.flag isoCode } )

        "GI" ->
            ( isoCode, { name = "Gibraltar", dialCode = "350", flag = Svg.flag isoCode } )

        "GR" ->
            ( isoCode, { name = "Greece (Ελλάδα)", dialCode = "30", flag = Svg.flag isoCode } )

        "GL" ->
            ( isoCode, { name = "Greenland (Kalaallit Nunaat)", dialCode = "299", flag = Svg.flag isoCode } )

        "GD" ->
            ( isoCode, { name = "Grenada", dialCode = "1473", flag = Svg.flag isoCode } )

        "GP" ->
            ( isoCode, { name = "Guadeloupe", dialCode = "590", flag = Svg.flag isoCode } )

        "GU" ->
            ( isoCode, { name = "Guam", dialCode = "1671", flag = Svg.flag isoCode } )

        "GT" ->
            ( isoCode, { name = "Guatemala", dialCode = "502", flag = Svg.flag isoCode } )

        "GG" ->
            ( isoCode, { name = "Guernsey", dialCode = "44", flag = Svg.flag isoCode } )

        "GN" ->
            ( isoCode, { name = "Guinea (Guinée)", dialCode = "224", flag = Svg.flag isoCode } )

        "GW" ->
            ( isoCode, { name = "Guinea-Bissau (Guiné Bissau)", dialCode = "245", flag = Svg.flag isoCode } )

        "GY" ->
            ( isoCode, { name = "Guyana", dialCode = "592", flag = Svg.flag isoCode } )

        "HT" ->
            ( isoCode, { name = "Haiti", dialCode = "509", flag = Svg.flag isoCode } )

        "HN" ->
            ( isoCode, { name = "Honduras", dialCode = "504", flag = Svg.flag isoCode } )

        "HK" ->
            ( isoCode, { name = "Hong Kong (香港)", dialCode = "852", flag = Svg.flag isoCode } )

        "HU" ->
            ( isoCode, { name = "Hungary (Magyarország)", dialCode = "36", flag = Svg.flag isoCode } )

        "IS" ->
            ( isoCode, { name = "Iceland (Ísland)", dialCode = "354", flag = Svg.flag isoCode } )

        "IN" ->
            ( isoCode, { name = "India (भारत)", dialCode = "91", flag = Svg.flag isoCode } )

        "ID" ->
            ( isoCode, { name = "Indonesia", dialCode = "62", flag = Svg.flag isoCode } )

        "IR" ->
            ( isoCode, { name = "Iran (\x202Bایران\x202C\x200E)", dialCode = "98", flag = Svg.flag isoCode } )

        "IQ" ->
            ( isoCode, { name = "Iraq (\x202Bالعراق\x202C\x200E)", dialCode = "964", flag = Svg.flag isoCode } )

        "IE" ->
            ( isoCode, { name = "Ireland", dialCode = "353", flag = Svg.flag isoCode } )

        "IM" ->
            ( isoCode, { name = "Isle of Man", dialCode = "44", flag = Svg.flag isoCode } )

        "IL" ->
            ( isoCode, { name = "Israel (\x202Bישראל\x202C\x200E)", dialCode = "972", flag = Svg.flag isoCode } )

        "IT" ->
            ( isoCode, { name = "Italy (Italia)", dialCode = "39", flag = Svg.flag isoCode } )

        "JM" ->
            ( isoCode, { name = "Jamaica", dialCode = "1876", flag = Svg.flag isoCode } )

        "JP" ->
            ( isoCode, { name = "Japan (日本)", dialCode = "81", flag = Svg.flag isoCode } )

        "JE" ->
            ( isoCode, { name = "Jersey", dialCode = "44", flag = Svg.flag isoCode } )

        "JO" ->
            ( isoCode, { name = "Jordan (\x202Bالأردن\x202C\x200E)", dialCode = "962", flag = Svg.flag isoCode } )

        "KZ" ->
            ( isoCode, { name = "Kazakhstan (Казахстан)", dialCode = "7", flag = Svg.flag isoCode } )

        "KE" ->
            ( isoCode, { name = "Kenya", dialCode = "254", flag = Svg.flag isoCode } )

        "KI" ->
            ( isoCode, { name = "Kiribati", dialCode = "686", flag = Svg.flag isoCode } )

        "XK" ->
            ( isoCode, { name = "Kosovo", dialCode = "383", flag = Svg.flag isoCode } )

        "KW" ->
            ( isoCode, { name = "Kuwait (\x202Bالكويت\x202C\x200E)", dialCode = "965", flag = Svg.flag isoCode } )

        "KG" ->
            ( isoCode, { name = "Kyrgyzstan (Кыргызстан)", dialCode = "996", flag = Svg.flag isoCode } )

        "LA" ->
            ( isoCode, { name = "Laos (ລາວ)", dialCode = "856", flag = Svg.flag isoCode } )

        "LV" ->
            ( isoCode, { name = "Latvia (Latvija)", dialCode = "371", flag = Svg.flag isoCode } )

        "LB" ->
            ( isoCode, { name = "Lebanon (\x202Bلبنان\x202C\x200E)", dialCode = "961", flag = Svg.flag isoCode } )

        "LS" ->
            ( isoCode, { name = "Lesotho", dialCode = "266", flag = Svg.flag isoCode } )

        "LR" ->
            ( isoCode, { name = "Liberia", dialCode = "231", flag = Svg.flag isoCode } )

        "LY" ->
            ( isoCode, { name = "Libya (\x202Bليبيا\x202C\x200E)", dialCode = "218", flag = Svg.flag isoCode } )

        "LI" ->
            ( isoCode, { name = "Liechtenstein", dialCode = "423", flag = Svg.flag isoCode } )

        "LT" ->
            ( isoCode, { name = "Lithuania (Lietuva)", dialCode = "370", flag = Svg.flag isoCode } )

        "LU" ->
            ( isoCode, { name = "Luxembourg", dialCode = "352", flag = Svg.flag isoCode } )

        "MO" ->
            ( isoCode, { name = "Macau (澳門)", dialCode = "853", flag = Svg.flag isoCode } )

        "MK" ->
            ( isoCode, { name = "Macedonia (FYROM) (Македонија)", dialCode = "389", flag = Svg.flag isoCode } )

        "MG" ->
            ( isoCode, { name = "Madagascar (Madagasikara)", dialCode = "261", flag = Svg.flag isoCode } )

        "MW" ->
            ( isoCode, { name = "Malawi", dialCode = "265", flag = Svg.flag isoCode } )

        "MY" ->
            ( isoCode, { name = "Malaysia", dialCode = "60", flag = Svg.flag isoCode } )

        "MV" ->
            ( isoCode, { name = "Maldives", dialCode = "960", flag = Svg.flag isoCode } )

        "ML" ->
            ( isoCode, { name = "Mali", dialCode = "223", flag = Svg.flag isoCode } )

        "MT" ->
            ( isoCode, { name = "Malta", dialCode = "356", flag = Svg.flag isoCode } )

        "MH" ->
            ( isoCode, { name = "Marshall Islands", dialCode = "692", flag = Svg.flag isoCode } )

        "MQ" ->
            ( isoCode, { name = "Martinique", dialCode = "596", flag = Svg.flag isoCode } )

        "MR" ->
            ( isoCode, { name = "Mauritania (\x202Bموريتانيا\x202C\x200E)", dialCode = "222", flag = Svg.flag isoCode } )

        "MU" ->
            ( isoCode, { name = "Mauritius (Moris)", dialCode = "230", flag = Svg.flag isoCode } )

        "YT" ->
            ( isoCode, { name = "Mayotte", dialCode = "262", flag = Svg.flag isoCode } )

        "MX" ->
            ( isoCode, { name = "Mexico (México)", dialCode = "52", flag = Svg.flag isoCode } )

        "FM" ->
            ( isoCode, { name = "Micronesia", dialCode = "691", flag = Svg.flag isoCode } )

        "MD" ->
            ( isoCode, { name = "Moldova (Republica Moldova)", dialCode = "373", flag = Svg.flag isoCode } )

        "MC" ->
            ( isoCode, { name = "Monaco", dialCode = "377", flag = Svg.flag isoCode } )

        "MN" ->
            ( isoCode, { name = "Mongolia (Монгол)", dialCode = "976", flag = Svg.flag isoCode } )

        "ME" ->
            ( isoCode, { name = "Montenegro (Crna Gora)", dialCode = "382", flag = Svg.flag isoCode } )

        "MS" ->
            ( isoCode, { name = "Montserrat", dialCode = "1664", flag = Svg.flag isoCode } )

        "MA" ->
            ( isoCode, { name = "Morocco (\x202Bالمغرب\x202C\x200E)", dialCode = "212", flag = Svg.flag isoCode } )

        "MZ" ->
            ( isoCode, { name = "Mozambique (Moçambique)", dialCode = "258", flag = Svg.flag isoCode } )

        "MM" ->
            ( isoCode, { name = "Myanmar (Burma) (မြန်မာ)", dialCode = "95", flag = Svg.flag isoCode } )

        "NA" ->
            ( isoCode, { name = "Namibia (Namibië)", dialCode = "264", flag = Svg.flag isoCode } )

        "NR" ->
            ( isoCode, { name = "Nauru", dialCode = "674", flag = Svg.flag isoCode } )

        "NP" ->
            ( isoCode, { name = "Nepal (नेपाल)", dialCode = "977", flag = Svg.flag isoCode } )

        "NL" ->
            ( isoCode, { name = "Netherlands (Nederland)", dialCode = "31", flag = Svg.flag isoCode } )

        "NC" ->
            ( isoCode, { name = "New Caledonia (Nouvelle-Calédonie)", dialCode = "687", flag = Svg.flag isoCode } )

        "NZ" ->
            ( isoCode, { name = "New Zealand", dialCode = "64", flag = Svg.flag isoCode } )

        "NI" ->
            ( isoCode, { name = "Nicaragua", dialCode = "505", flag = Svg.flag isoCode } )

        "NE" ->
            ( isoCode, { name = "Niger (Nijar)", dialCode = "227", flag = Svg.flag isoCode } )

        "NG" ->
            ( isoCode, { name = "Nigeria", dialCode = "234", flag = Svg.flag isoCode } )

        "NU" ->
            ( isoCode, { name = "Niue", dialCode = "683", flag = Svg.flag isoCode } )

        "NF" ->
            ( isoCode, { name = "Norfolk Island", dialCode = "672", flag = Svg.flag isoCode } )

        "KP" ->
            ( isoCode, { name = "North Korea (조선 민주주의 인민 공화국)", dialCode = "850", flag = Svg.flag isoCode } )

        "MP" ->
            ( isoCode, { name = "Northern Mariana Islands", dialCode = "1670", flag = Svg.flag isoCode } )

        "NO" ->
            ( isoCode, { name = "Norway (Norge)", dialCode = "47", flag = Svg.flag isoCode } )

        "OM" ->
            ( isoCode, { name = "Oman (\x202Bعُمان\x202C\x200E)", dialCode = "968", flag = Svg.flag isoCode } )

        "PK" ->
            ( isoCode, { name = "Pakistan (\x202Bپاکستان\x202C\x200E)", dialCode = "92", flag = Svg.flag isoCode } )

        "PW" ->
            ( isoCode, { name = "Palau", dialCode = "680", flag = Svg.flag isoCode } )

        "PS" ->
            ( isoCode, { name = "Palestine (\x202Bفلسطين\x202C\x200E)", dialCode = "970", flag = Svg.flag isoCode } )

        "PA" ->
            ( isoCode, { name = "Panama (Panamá)", dialCode = "507", flag = Svg.flag isoCode } )

        "PG" ->
            ( isoCode, { name = "Papua New Guinea", dialCode = "675", flag = Svg.flag isoCode } )

        "PY" ->
            ( isoCode, { name = "Paraguay", dialCode = "595", flag = Svg.flag isoCode } )

        "PE" ->
            ( isoCode, { name = "Peru (Perú)", dialCode = "51", flag = Svg.flag isoCode } )

        "PH" ->
            ( isoCode, { name = "Philippines", dialCode = "63", flag = Svg.flag isoCode } )

        "PL" ->
            ( isoCode, { name = "Poland (Polska)", dialCode = "48", flag = Svg.flag isoCode } )

        "PT" ->
            ( isoCode, { name = "Portugal", dialCode = "351", flag = Svg.flag isoCode } )

        "PR" ->
            ( isoCode, { name = "Puerto Rico", dialCode = "1", flag = Svg.flag isoCode } )

        "QA" ->
            ( isoCode, { name = "Qatar (\x202Bقطر\x202C\x200E)", dialCode = "974", flag = Svg.flag isoCode } )

        "RE" ->
            ( isoCode, { name = "Réunion (La Réunion)", dialCode = "262", flag = Svg.flag isoCode } )

        "RO" ->
            ( isoCode, { name = "Romania (România)", dialCode = "40", flag = Svg.flag isoCode } )

        "RU" ->
            ( isoCode, { name = "Russia (Россия)", dialCode = "7", flag = Svg.flag isoCode } )

        "RW" ->
            ( isoCode, { name = "Rwanda", dialCode = "250", flag = Svg.flag isoCode } )

        "BL" ->
            ( isoCode, { name = "Saint Barthélemy", dialCode = "590", flag = Svg.flag isoCode } )

        "SH" ->
            ( isoCode, { name = "Saint Helena", dialCode = "290", flag = Svg.flag isoCode } )

        "KN" ->
            ( isoCode, { name = "Saint Kitts and Nevis", dialCode = "1869", flag = Svg.flag isoCode } )

        "LC" ->
            ( isoCode, { name = "Saint Lucia", dialCode = "1758", flag = Svg.flag isoCode } )

        "MF" ->
            ( isoCode, { name = "Saint Martin (Saint-Martin (partie française))", dialCode = "590", flag = Svg.flag isoCode } )

        "PM" ->
            ( isoCode, { name = "Saint Pierre and Miquelon (Saint-Pierre-et-Miquelon)", dialCode = "508", flag = Svg.flag isoCode } )

        "VC" ->
            ( isoCode, { name = "Saint Vincent and the Grenadines", dialCode = "1784", flag = Svg.flag isoCode } )

        "WS" ->
            ( isoCode, { name = "Samoa", dialCode = "685", flag = Svg.flag isoCode } )

        "SM" ->
            ( isoCode, { name = "San Marino", dialCode = "378", flag = Svg.flag isoCode } )

        "ST" ->
            ( isoCode, { name = "São Tomé and Príncipe (São Tomé e Príncipe)", dialCode = "239", flag = Svg.flag isoCode } )

        "SA" ->
            ( isoCode, { name = "Saudi Arabia (\x202Bالمملكة العربية السعودية\x202C\x200E)", dialCode = "966", flag = Svg.flag isoCode } )

        "SN" ->
            ( isoCode, { name = "Senegal (Sénégal)", dialCode = "221", flag = Svg.flag isoCode } )

        "RS" ->
            ( isoCode, { name = "Serbia (Србија)", dialCode = "381", flag = Svg.flag isoCode } )

        "SC" ->
            ( isoCode, { name = "Seychelles", dialCode = "248", flag = Svg.flag isoCode } )

        "SL" ->
            ( isoCode, { name = "Sierra Leone", dialCode = "232", flag = Svg.flag isoCode } )

        "SG" ->
            ( isoCode, { name = "Singapore", dialCode = "65", flag = Svg.flag isoCode } )

        "SX" ->
            ( isoCode, { name = "Sint Maarten", dialCode = "1721", flag = Svg.flag isoCode } )

        "SK" ->
            ( isoCode, { name = "Slovakia (Slovensko)", dialCode = "421", flag = Svg.flag isoCode } )

        "SI" ->
            ( isoCode, { name = "Slovenia (Slovenija)", dialCode = "386", flag = Svg.flag isoCode } )

        "SB" ->
            ( isoCode, { name = "Solomon Islands", dialCode = "677", flag = Svg.flag isoCode } )

        "SO" ->
            ( isoCode, { name = "Somalia (Soomaaliya)", dialCode = "252", flag = Svg.flag isoCode } )

        "ZA" ->
            ( isoCode, { name = "South Africa", dialCode = "27", flag = Svg.flag isoCode } )

        "KR" ->
            ( isoCode, { name = "South Korea (대한민국)", dialCode = "82", flag = Svg.flag isoCode } )

        "SS" ->
            ( isoCode, { name = "South Sudan (\x202Bجنوب السودان\x202C\x200E)", dialCode = "211", flag = Svg.flag isoCode } )

        "ES" ->
            ( isoCode, { name = "Spain (España)", dialCode = "34", flag = Svg.flag isoCode } )

        "LK" ->
            ( isoCode, { name = "Sri Lanka (ශ්\x200Dරී ලංකාව)", dialCode = "94", flag = Svg.flag isoCode } )

        "SD" ->
            ( isoCode, { name = "Sudan (\x202Bالسودان\x202C\x200E)", dialCode = "249", flag = Svg.flag isoCode } )

        "SR" ->
            ( isoCode, { name = "Suriname", dialCode = "597", flag = Svg.flag isoCode } )

        "SJ" ->
            ( isoCode, { name = "Svalbard and Jan Mayen", dialCode = "47", flag = Svg.flag isoCode } )

        "SZ" ->
            ( isoCode, { name = "Swaziland", dialCode = "268", flag = Svg.flag isoCode } )

        "SE" ->
            ( isoCode, { name = "Sweden (Sverige)", dialCode = "46", flag = Svg.flag isoCode } )

        "CH" ->
            ( isoCode, { name = "Switzerland (Schweiz)", dialCode = "41", flag = Svg.flag isoCode } )

        "SY" ->
            ( isoCode, { name = "Syria (\x202Bسوريا\x202C\x200E)", dialCode = "963", flag = Svg.flag isoCode } )

        "TW" ->
            ( isoCode, { name = "Taiwan (台灣)", dialCode = "886", flag = Svg.flag isoCode } )

        "TJ" ->
            ( isoCode, { name = "Tajikistan", dialCode = "992", flag = Svg.flag isoCode } )

        "TZ" ->
            ( isoCode, { name = "Tanzania", dialCode = "255", flag = Svg.flag isoCode } )

        "TH" ->
            ( isoCode, { name = "Thailand (ไทย)", dialCode = "66", flag = Svg.flag isoCode } )

        "TL" ->
            ( isoCode, { name = "Timor-Leste", dialCode = "670", flag = Svg.flag isoCode } )

        "TG" ->
            ( isoCode, { name = "Togo", dialCode = "228", flag = Svg.flag isoCode } )

        "TK" ->
            ( isoCode, { name = "Tokelau", dialCode = "690", flag = Svg.flag isoCode } )

        "TO" ->
            ( isoCode, { name = "Tonga", dialCode = "676", flag = Svg.flag isoCode } )

        "TT" ->
            ( isoCode, { name = "Trinidad and Tobago", dialCode = "1868", flag = Svg.flag isoCode } )

        "TN" ->
            ( isoCode, { name = "Tunisia (\x202Bتونس\x202C\x200E)", dialCode = "216", flag = Svg.flag isoCode } )

        "TR" ->
            ( isoCode, { name = "Turkey (Türkiye)", dialCode = "90", flag = Svg.flag isoCode } )

        "TM" ->
            ( isoCode, { name = "Turkmenistan", dialCode = "993", flag = Svg.flag isoCode } )

        "TC" ->
            ( isoCode, { name = "Turks and Caicos Islands", dialCode = "1649", flag = Svg.flag isoCode } )

        "TV" ->
            ( isoCode, { name = "Tuvalu", dialCode = "688", flag = Svg.flag isoCode } )

        "VI" ->
            ( isoCode, { name = "U.S. Virgin Islands", dialCode = "1340", flag = Svg.flag isoCode } )

        "UG" ->
            ( isoCode, { name = "Uganda", dialCode = "256", flag = Svg.flag isoCode } )

        "UA" ->
            ( isoCode, { name = "Ukraine (Україна)", dialCode = "380", flag = Svg.flag isoCode } )

        "AE" ->
            ( isoCode, { name = "United Arab Emirates (\x202Bالإمارات العربية المتحدة\x202C\x200E)", dialCode = "971", flag = Svg.flag isoCode } )

        "GB" ->
            ( isoCode, { name = "United Kingdom", dialCode = "44", flag = Svg.flag isoCode } )

        "US" ->
            ( isoCode, { name = "United States", dialCode = "1", flag = Svg.flag isoCode } )

        "UY" ->
            ( isoCode, { name = "Uruguay", dialCode = "598", flag = Svg.flag isoCode } )

        "UZ" ->
            ( isoCode, { name = "Uzbekistan (Oʻzbekiston)", dialCode = "998", flag = Svg.flag isoCode } )

        "VU" ->
            ( isoCode, { name = "Vanuatu", dialCode = "678", flag = Svg.flag isoCode } )

        "VA" ->
            ( isoCode, { name = "Vatican City (Città del Vaticano)", dialCode = "39", flag = Svg.flag isoCode } )

        "VE" ->
            ( isoCode, { name = "Venezuela", dialCode = "58", flag = Svg.flag isoCode } )

        "VN" ->
            ( isoCode, { name = "Vietnam (Việt Nam)", dialCode = "84", flag = Svg.flag isoCode } )

        "WF" ->
            ( isoCode, { name = "Wallis and Futuna (Wallis-et-Futuna)", dialCode = "681", flag = Svg.flag isoCode } )

        "EH" ->
            ( isoCode, { name = "Western Sahara (\x202Bالصحراء الغربية\x202C\x200E)", dialCode = "212", flag = Svg.flag isoCode } )

        "YE" ->
            ( isoCode, { name = "Yemen (\x202Bاليمن\x202C\x200E)", dialCode = "967", flag = Svg.flag isoCode } )

        "ZM" ->
            ( isoCode, { name = "Zambia", dialCode = "260", flag = Svg.flag isoCode } )

        "ZW" ->
            ( isoCode, { name = "Zimbabwe", dialCode = "263", flag = Svg.flag isoCode } )

        "AX" ->
            ( isoCode, { name = "Åland Islands", dialCode = "358", flag = Svg.flag isoCode } )

        _ ->
            ( "", { name = "Unknown", dialCode = "", flag = Svg.flag "" } )


isoCodes : List String
isoCodes =
    [ "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "BQ", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CD", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "XK", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "KP", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW", "AX" ]
