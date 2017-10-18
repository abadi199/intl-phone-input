module IntlPhoneInput.Config
    exposing
        ( Config
        , configWithId
        , countries
        , countryList
        , defaultConfig
        , getCountryElementId
        , getCountryPickerId
        , getPhoneNumberInputId
        , getSearchInputId
        , isCountryPicker
        , isDropdownElement
        , isoCodes
        , toCountryData
        , toCountryDataList
        )

import Dict exposing (Dict)
import IntlPhoneInput.Internal exposing (State(..), initialState)
import IntlPhoneInput.Svg as Svg
import IntlPhoneInput.Type exposing (CountryData, PhoneNumber, emptyPhoneNumber)
import Murmur3
import Set exposing (Set)


type alias Config msg =
    { hash : String
    , onChange : State -> PhoneNumber -> Cmd msg -> msg
    , namespace : String
    , countries : Dict String CountryData
    , countriesSorter : List ( String, CountryData ) -> List ( String, CountryData )
    }


defaultHashSeed : Int
defaultHashSeed =
    118999881999119


defaultConfig : (State -> PhoneNumber -> Cmd msg -> msg) -> Config msg
defaultConfig =
    configWithSeed defaultHashSeed


configWithSeed : Int -> (State -> PhoneNumber -> Cmd msg -> msg) -> Config msg
configWithSeed hashSeed onChange =
    { hash = Murmur3.hashString hashSeed (onChange initialState emptyPhoneNumber Cmd.none |> toString) |> toString
    , onChange = onChange
    , namespace = "IntlPhoneInput"
    , countries = countries
    , countriesSorter = defaultCountriesSorter
    }


configWithId : String -> (State -> PhoneNumber -> Cmd msg -> msg) -> Config msg
configWithId id onChange =
    { hash = id ++ (Murmur3.hashString defaultHashSeed (onChange initialState emptyPhoneNumber Cmd.none |> toString) |> toString)
    , onChange = onChange
    , namespace = "IntlPhoneInput"
    , countries = countries
    , countriesSorter = defaultCountriesSorter
    }


defaultCountriesSorter : List ( String, CountryData ) -> List ( String, CountryData )
defaultCountriesSorter countries =
    countries
        |> List.sortBy (Tuple.second >> .name)


getPhoneNumberInputId : Config msg -> String
getPhoneNumberInputId config =
    config.namespace ++ "PhoneNumberInput" ++ config.hash


getSearchInputId : Config msg -> String
getSearchInputId config =
    config.namespace ++ "SearchInput" ++ config.hash


getCountryElementId : Config msg -> String -> String
getCountryElementId config isoCode =
    config.namespace ++ "Country" ++ isoCode ++ config.hash


getCountryPickerId : Config msg -> String
getCountryPickerId config =
    config.namespace ++ "CountryPicker" ++ config.hash


isCountryPicker : String -> Config msg -> Bool
isCountryPicker domId config =
    getCountryPickerId config == domId


isDropdownElement : String -> Config msg -> State -> Bool
isDropdownElement domId config (State state) =
    let
        isCountryElement =
            state.filteredCountries
                |> Set.map (getCountryElementId config)
                |> Set.member domId

        isSearchElement =
            domId == getSearchInputId config
    in
    isCountryElement || isSearchElement


countries : Dict String CountryData
countries =
    isoCodes
        |> List.map toCountryData
        |> Dict.fromList


countryList : List ( String, CountryData )
countryList =
    isoCodes
        |> List.map toCountryData


toCountryDataList : Config msg -> Set String -> List ( String, CountryData )
toCountryDataList config set =
    set
        |> Set.toList
        |> List.map toCountryData
        |> config.countriesSorter


toCountryData : String -> ( String, CountryData )
toCountryData isoCode =
    case isoCode of
        "AF" ->
            ( isoCode, { name = "Afghanistan (\x202Bافغانستان\x202C\x200E)", dialCode = "93" } )

        "AL" ->
            ( isoCode, { name = "Albania (Shqipëri)", dialCode = "355" } )

        "DZ" ->
            ( isoCode, { name = "Algeria (\x202Bالجزائر\x202C\x200E)", dialCode = "213" } )

        "AS" ->
            ( isoCode, { name = "American Samoa", dialCode = "1684" } )

        "AD" ->
            ( isoCode, { name = "Andorra", dialCode = "376" } )

        "AO" ->
            ( isoCode, { name = "Angola", dialCode = "244" } )

        "AI" ->
            ( isoCode, { name = "Anguilla", dialCode = "1264" } )

        "AG" ->
            ( isoCode, { name = "Antigua and Barbuda", dialCode = "1268" } )

        "AR" ->
            ( isoCode, { name = "Argentina", dialCode = "54" } )

        "AM" ->
            ( isoCode, { name = "Armenia (Հայաստան)", dialCode = "374" } )

        "AW" ->
            ( isoCode, { name = "Aruba", dialCode = "297" } )

        "AU" ->
            ( isoCode, { name = "Australia", dialCode = "61" } )

        "AT" ->
            ( isoCode, { name = "Austria (Österreich)", dialCode = "43" } )

        "AZ" ->
            ( isoCode, { name = "Azerbaijan (Azərbaycan)", dialCode = "994" } )

        "BS" ->
            ( isoCode, { name = "Bahamas", dialCode = "1242" } )

        "BH" ->
            ( isoCode, { name = "Bahrain (\x202Bالبحرين\x202C\x200E)", dialCode = "973" } )

        "BD" ->
            ( isoCode, { name = "Bangladesh (বাংলাদেশ)", dialCode = "880" } )

        "BB" ->
            ( isoCode, { name = "Barbados", dialCode = "1246" } )

        "BY" ->
            ( isoCode, { name = "Belarus (Беларусь)", dialCode = "375" } )

        "BE" ->
            ( isoCode, { name = "Belgium (België)", dialCode = "32" } )

        "BZ" ->
            ( isoCode, { name = "Belize", dialCode = "501" } )

        "BJ" ->
            ( isoCode, { name = "Benin (Bénin)", dialCode = "229" } )

        "BM" ->
            ( isoCode, { name = "Bermuda", dialCode = "1441" } )

        "BT" ->
            ( isoCode, { name = "Bhutan (འབྲུག)", dialCode = "975" } )

        "BO" ->
            ( isoCode, { name = "Bolivia", dialCode = "591" } )

        "BA" ->
            ( isoCode, { name = "Bosnia and Herzegovina (Босна и Херцеговина)", dialCode = "387" } )

        "BW" ->
            ( isoCode, { name = "Botswana", dialCode = "267" } )

        "BR" ->
            ( isoCode, { name = "Brazil (Brasil)", dialCode = "55" } )

        "IO" ->
            ( isoCode, { name = "British Indian Ocean Territory", dialCode = "246" } )

        "VG" ->
            ( isoCode, { name = "British Virgin Islands", dialCode = "1284" } )

        "BN" ->
            ( isoCode, { name = "Brunei", dialCode = "673" } )

        "BG" ->
            ( isoCode, { name = "Bulgaria (България)", dialCode = "359" } )

        "BF" ->
            ( isoCode, { name = "Burkina Faso", dialCode = "226" } )

        "BI" ->
            ( isoCode, { name = "Burundi (Uburundi)", dialCode = "257" } )

        "KH" ->
            ( isoCode, { name = "Cambodia (កម្ពុជា)", dialCode = "855" } )

        "CM" ->
            ( isoCode, { name = "Cameroon (Cameroun)", dialCode = "237" } )

        "CA" ->
            ( isoCode, { name = "Canada", dialCode = "1" } )

        "CV" ->
            ( isoCode, { name = "Cape Verde (Kabu Verdi)", dialCode = "238" } )

        "BQ" ->
            ( isoCode, { name = "Caribbean Netherlands", dialCode = "599" } )

        "KY" ->
            ( isoCode, { name = "Cayman Islands", dialCode = "1345" } )

        "CF" ->
            ( isoCode, { name = "Central African Republic (République centrafricaine)", dialCode = "236" } )

        "TD" ->
            ( isoCode, { name = "Chad (Tchad)", dialCode = "235" } )

        "CL" ->
            ( isoCode, { name = "Chile", dialCode = "56" } )

        "CN" ->
            ( isoCode, { name = "China (中国)", dialCode = "86" } )

        "CX" ->
            ( isoCode, { name = "Christmas Island", dialCode = "61" } )

        "CC" ->
            ( isoCode, { name = "Cocos (Keeling) Islands", dialCode = "61" } )

        "CO" ->
            ( isoCode, { name = "Colombia", dialCode = "57" } )

        "KM" ->
            ( isoCode, { name = "Comoros (\x202Bجزر القمر\x202C\x200E)", dialCode = "269" } )

        "CD" ->
            ( isoCode, { name = "Congo (DRC) (Jamhuri ya Kidemokrasia ya Kongo)", dialCode = "243" } )

        "CG" ->
            ( isoCode, { name = "Congo (Republic) (Congo-Brazzaville)", dialCode = "242" } )

        "CK" ->
            ( isoCode, { name = "Cook Islands", dialCode = "682" } )

        "CR" ->
            ( isoCode, { name = "Costa Rica", dialCode = "506" } )

        "CI" ->
            ( isoCode, { name = "Côte d’Ivoire", dialCode = "225" } )

        "HR" ->
            ( isoCode, { name = "Croatia (Hrvatska)", dialCode = "385" } )

        "CU" ->
            ( isoCode, { name = "Cuba", dialCode = "53" } )

        "CW" ->
            ( isoCode, { name = "Curaçao", dialCode = "599" } )

        "CY" ->
            ( isoCode, { name = "Cyprus (Κύπρος)", dialCode = "357" } )

        "CZ" ->
            ( isoCode, { name = "Czech Republic (Česká republika)", dialCode = "420" } )

        "DK" ->
            ( isoCode, { name = "Denmark (Danmark)", dialCode = "45" } )

        "DJ" ->
            ( isoCode, { name = "Djibouti", dialCode = "253" } )

        "DM" ->
            ( isoCode, { name = "Dominica", dialCode = "1767" } )

        "DO" ->
            ( isoCode, { name = "Dominican Republic (República Dominicana)", dialCode = "1" } )

        "EC" ->
            ( isoCode, { name = "Ecuador", dialCode = "593" } )

        "EG" ->
            ( isoCode, { name = "Egypt (\x202Bمصر\x202C\x200E)", dialCode = "20" } )

        "SV" ->
            ( isoCode, { name = "El Salvador", dialCode = "503" } )

        "GQ" ->
            ( isoCode, { name = "Equatorial Guinea (Guinea Ecuatorial)", dialCode = "240" } )

        "ER" ->
            ( isoCode, { name = "Eritrea", dialCode = "291" } )

        "EE" ->
            ( isoCode, { name = "Estonia (Eesti)", dialCode = "372" } )

        "ET" ->
            ( isoCode, { name = "Ethiopia", dialCode = "251" } )

        "FK" ->
            ( isoCode, { name = "Falkland Islands (Islas Malvinas)", dialCode = "500" } )

        "FO" ->
            ( isoCode, { name = "Faroe Islands (Føroyar)", dialCode = "298" } )

        "FJ" ->
            ( isoCode, { name = "Fiji", dialCode = "679" } )

        "FI" ->
            ( isoCode, { name = "Finland (Suomi)", dialCode = "358" } )

        "FR" ->
            ( isoCode, { name = "France", dialCode = "33" } )

        "GF" ->
            ( isoCode, { name = "French Guiana (Guyane française)", dialCode = "594" } )

        "PF" ->
            ( isoCode, { name = "French Polynesia (Polynésie française)", dialCode = "689" } )

        "GA" ->
            ( isoCode, { name = "Gabon", dialCode = "241" } )

        "GM" ->
            ( isoCode, { name = "Gambia", dialCode = "220" } )

        "GE" ->
            ( isoCode, { name = "Georgia (საქართველო)", dialCode = "995" } )

        "DE" ->
            ( isoCode, { name = "Germany (Deutschland)", dialCode = "49" } )

        "GH" ->
            ( isoCode, { name = "Ghana (Gaana)", dialCode = "233" } )

        "GI" ->
            ( isoCode, { name = "Gibraltar", dialCode = "350" } )

        "GR" ->
            ( isoCode, { name = "Greece (Ελλάδα)", dialCode = "30" } )

        "GL" ->
            ( isoCode, { name = "Greenland (Kalaallit Nunaat)", dialCode = "299" } )

        "GD" ->
            ( isoCode, { name = "Grenada", dialCode = "1473" } )

        "GP" ->
            ( isoCode, { name = "Guadeloupe", dialCode = "590" } )

        "GU" ->
            ( isoCode, { name = "Guam", dialCode = "1671" } )

        "GT" ->
            ( isoCode, { name = "Guatemala", dialCode = "502" } )

        "GG" ->
            ( isoCode, { name = "Guernsey", dialCode = "44" } )

        "GN" ->
            ( isoCode, { name = "Guinea (Guinée)", dialCode = "224" } )

        "GW" ->
            ( isoCode, { name = "Guinea-Bissau (Guiné Bissau)", dialCode = "245" } )

        "GY" ->
            ( isoCode, { name = "Guyana", dialCode = "592" } )

        "HT" ->
            ( isoCode, { name = "Haiti", dialCode = "509" } )

        "HN" ->
            ( isoCode, { name = "Honduras", dialCode = "504" } )

        "HK" ->
            ( isoCode, { name = "Hong Kong (香港)", dialCode = "852" } )

        "HU" ->
            ( isoCode, { name = "Hungary (Magyarország)", dialCode = "36" } )

        "IS" ->
            ( isoCode, { name = "Iceland (Ísland)", dialCode = "354" } )

        "IN" ->
            ( isoCode, { name = "India (भारत)", dialCode = "91" } )

        "ID" ->
            ( isoCode, { name = "Indonesia", dialCode = "62" } )

        "IR" ->
            ( isoCode, { name = "Iran (\x202Bایران\x202C\x200E)", dialCode = "98" } )

        "IQ" ->
            ( isoCode, { name = "Iraq (\x202Bالعراق\x202C\x200E)", dialCode = "964" } )

        "IE" ->
            ( isoCode, { name = "Ireland", dialCode = "353" } )

        "IM" ->
            ( isoCode, { name = "Isle of Man", dialCode = "44" } )

        "IL" ->
            ( isoCode, { name = "Israel (\x202Bישראל\x202C\x200E)", dialCode = "972" } )

        "IT" ->
            ( isoCode, { name = "Italy (Italia)", dialCode = "39" } )

        "JM" ->
            ( isoCode, { name = "Jamaica", dialCode = "1876" } )

        "JP" ->
            ( isoCode, { name = "Japan (日本)", dialCode = "81" } )

        "JE" ->
            ( isoCode, { name = "Jersey", dialCode = "44" } )

        "JO" ->
            ( isoCode, { name = "Jordan (\x202Bالأردن\x202C\x200E)", dialCode = "962" } )

        "KZ" ->
            ( isoCode, { name = "Kazakhstan (Казахстан)", dialCode = "7" } )

        "KE" ->
            ( isoCode, { name = "Kenya", dialCode = "254" } )

        "KI" ->
            ( isoCode, { name = "Kiribati", dialCode = "686" } )

        "XK" ->
            ( isoCode, { name = "Kosovo", dialCode = "383" } )

        "KW" ->
            ( isoCode, { name = "Kuwait (\x202Bالكويت\x202C\x200E)", dialCode = "965" } )

        "KG" ->
            ( isoCode, { name = "Kyrgyzstan (Кыргызстан)", dialCode = "996" } )

        "LA" ->
            ( isoCode, { name = "Laos (ລາວ)", dialCode = "856" } )

        "LV" ->
            ( isoCode, { name = "Latvia (Latvija)", dialCode = "371" } )

        "LB" ->
            ( isoCode, { name = "Lebanon (\x202Bلبنان\x202C\x200E)", dialCode = "961" } )

        "LS" ->
            ( isoCode, { name = "Lesotho", dialCode = "266" } )

        "LR" ->
            ( isoCode, { name = "Liberia", dialCode = "231" } )

        "LY" ->
            ( isoCode, { name = "Libya (\x202Bليبيا\x202C\x200E)", dialCode = "218" } )

        "LI" ->
            ( isoCode, { name = "Liechtenstein", dialCode = "423" } )

        "LT" ->
            ( isoCode, { name = "Lithuania (Lietuva)", dialCode = "370" } )

        "LU" ->
            ( isoCode, { name = "Luxembourg", dialCode = "352" } )

        "MO" ->
            ( isoCode, { name = "Macau (澳門)", dialCode = "853" } )

        "MK" ->
            ( isoCode, { name = "Macedonia (FYROM) (Македонија)", dialCode = "389" } )

        "MG" ->
            ( isoCode, { name = "Madagascar (Madagasikara)", dialCode = "261" } )

        "MW" ->
            ( isoCode, { name = "Malawi", dialCode = "265" } )

        "MY" ->
            ( isoCode, { name = "Malaysia", dialCode = "60" } )

        "MV" ->
            ( isoCode, { name = "Maldives", dialCode = "960" } )

        "ML" ->
            ( isoCode, { name = "Mali", dialCode = "223" } )

        "MT" ->
            ( isoCode, { name = "Malta", dialCode = "356" } )

        "MH" ->
            ( isoCode, { name = "Marshall Islands", dialCode = "692" } )

        "MQ" ->
            ( isoCode, { name = "Martinique", dialCode = "596" } )

        "MR" ->
            ( isoCode, { name = "Mauritania (\x202Bموريتانيا\x202C\x200E)", dialCode = "222" } )

        "MU" ->
            ( isoCode, { name = "Mauritius (Moris)", dialCode = "230" } )

        "YT" ->
            ( isoCode, { name = "Mayotte", dialCode = "262" } )

        "MX" ->
            ( isoCode, { name = "Mexico (México)", dialCode = "52" } )

        "FM" ->
            ( isoCode, { name = "Micronesia", dialCode = "691" } )

        "MD" ->
            ( isoCode, { name = "Moldova (Republica Moldova)", dialCode = "373" } )

        "MC" ->
            ( isoCode, { name = "Monaco", dialCode = "377" } )

        "MN" ->
            ( isoCode, { name = "Mongolia (Монгол)", dialCode = "976" } )

        "ME" ->
            ( isoCode, { name = "Montenegro (Crna Gora)", dialCode = "382" } )

        "MS" ->
            ( isoCode, { name = "Montserrat", dialCode = "1664" } )

        "MA" ->
            ( isoCode, { name = "Morocco (\x202Bالمغرب\x202C\x200E)", dialCode = "212" } )

        "MZ" ->
            ( isoCode, { name = "Mozambique (Moçambique)", dialCode = "258" } )

        "MM" ->
            ( isoCode, { name = "Myanmar (Burma) (မြန်မာ)", dialCode = "95" } )

        "NA" ->
            ( isoCode, { name = "Namibia (Namibië)", dialCode = "264" } )

        "NR" ->
            ( isoCode, { name = "Nauru", dialCode = "674" } )

        "NP" ->
            ( isoCode, { name = "Nepal (नेपाल)", dialCode = "977" } )

        "NL" ->
            ( isoCode, { name = "Netherlands (Nederland)", dialCode = "31" } )

        "NC" ->
            ( isoCode, { name = "New Caledonia (Nouvelle-Calédonie)", dialCode = "687" } )

        "NZ" ->
            ( isoCode, { name = "New Zealand", dialCode = "64" } )

        "NI" ->
            ( isoCode, { name = "Nicaragua", dialCode = "505" } )

        "NE" ->
            ( isoCode, { name = "Niger (Nijar)", dialCode = "227" } )

        "NG" ->
            ( isoCode, { name = "Nigeria", dialCode = "234" } )

        "NU" ->
            ( isoCode, { name = "Niue", dialCode = "683" } )

        "NF" ->
            ( isoCode, { name = "Norfolk Island", dialCode = "672" } )

        "KP" ->
            ( isoCode, { name = "North Korea (조선 민주주의 인민 공화국)", dialCode = "850" } )

        "MP" ->
            ( isoCode, { name = "Northern Mariana Islands", dialCode = "1670" } )

        "NO" ->
            ( isoCode, { name = "Norway (Norge)", dialCode = "47" } )

        "OM" ->
            ( isoCode, { name = "Oman (\x202Bعُمان\x202C\x200E)", dialCode = "968" } )

        "PK" ->
            ( isoCode, { name = "Pakistan (\x202Bپاکستان\x202C\x200E)", dialCode = "92" } )

        "PW" ->
            ( isoCode, { name = "Palau", dialCode = "680" } )

        "PS" ->
            ( isoCode, { name = "Palestine (\x202Bفلسطين\x202C\x200E)", dialCode = "970" } )

        "PA" ->
            ( isoCode, { name = "Panama (Panamá)", dialCode = "507" } )

        "PG" ->
            ( isoCode, { name = "Papua New Guinea", dialCode = "675" } )

        "PY" ->
            ( isoCode, { name = "Paraguay", dialCode = "595" } )

        "PE" ->
            ( isoCode, { name = "Peru (Perú)", dialCode = "51" } )

        "PH" ->
            ( isoCode, { name = "Philippines", dialCode = "63" } )

        "PL" ->
            ( isoCode, { name = "Poland (Polska)", dialCode = "48" } )

        "PT" ->
            ( isoCode, { name = "Portugal", dialCode = "351" } )

        "PR" ->
            ( isoCode, { name = "Puerto Rico", dialCode = "1" } )

        "QA" ->
            ( isoCode, { name = "Qatar (\x202Bقطر\x202C\x200E)", dialCode = "974" } )

        "RE" ->
            ( isoCode, { name = "Réunion (La Réunion)", dialCode = "262" } )

        "RO" ->
            ( isoCode, { name = "Romania (România)", dialCode = "40" } )

        "RU" ->
            ( isoCode, { name = "Russia (Россия)", dialCode = "7" } )

        "RW" ->
            ( isoCode, { name = "Rwanda", dialCode = "250" } )

        "BL" ->
            ( isoCode, { name = "Saint Barthélemy", dialCode = "590" } )

        "SH" ->
            ( isoCode, { name = "Saint Helena", dialCode = "290" } )

        "KN" ->
            ( isoCode, { name = "Saint Kitts and Nevis", dialCode = "1869" } )

        "LC" ->
            ( isoCode, { name = "Saint Lucia", dialCode = "1758" } )

        "MF" ->
            ( isoCode, { name = "Saint Martin (Saint-Martin (partie française))", dialCode = "590" } )

        "PM" ->
            ( isoCode, { name = "Saint Pierre and Miquelon (Saint-Pierre-et-Miquelon)", dialCode = "508" } )

        "VC" ->
            ( isoCode, { name = "Saint Vincent and the Grenadines", dialCode = "1784" } )

        "WS" ->
            ( isoCode, { name = "Samoa", dialCode = "685" } )

        "SM" ->
            ( isoCode, { name = "San Marino", dialCode = "378" } )

        "ST" ->
            ( isoCode, { name = "São Tomé and Príncipe (São Tomé e Príncipe)", dialCode = "239" } )

        "SA" ->
            ( isoCode, { name = "Saudi Arabia (\x202Bالمملكة العربية السعودية\x202C\x200E)", dialCode = "966" } )

        "SN" ->
            ( isoCode, { name = "Senegal (Sénégal)", dialCode = "221" } )

        "RS" ->
            ( isoCode, { name = "Serbia (Србија)", dialCode = "381" } )

        "SC" ->
            ( isoCode, { name = "Seychelles", dialCode = "248" } )

        "SL" ->
            ( isoCode, { name = "Sierra Leone", dialCode = "232" } )

        "SG" ->
            ( isoCode, { name = "Singapore", dialCode = "65" } )

        "SX" ->
            ( isoCode, { name = "Sint Maarten", dialCode = "1721" } )

        "SK" ->
            ( isoCode, { name = "Slovakia (Slovensko)", dialCode = "421" } )

        "SI" ->
            ( isoCode, { name = "Slovenia (Slovenija)", dialCode = "386" } )

        "SB" ->
            ( isoCode, { name = "Solomon Islands", dialCode = "677" } )

        "SO" ->
            ( isoCode, { name = "Somalia (Soomaaliya)", dialCode = "252" } )

        "ZA" ->
            ( isoCode, { name = "South Africa", dialCode = "27" } )

        "KR" ->
            ( isoCode, { name = "South Korea (대한민국)", dialCode = "82" } )

        "SS" ->
            ( isoCode, { name = "South Sudan (\x202Bجنوب السودان\x202C\x200E)", dialCode = "211" } )

        "ES" ->
            ( isoCode, { name = "Spain (España)", dialCode = "34" } )

        "LK" ->
            ( isoCode, { name = "Sri Lanka (ශ්\x200Dරී ලංකාව)", dialCode = "94" } )

        "SD" ->
            ( isoCode, { name = "Sudan (\x202Bالسودان\x202C\x200E)", dialCode = "249" } )

        "SR" ->
            ( isoCode, { name = "Suriname", dialCode = "597" } )

        "SJ" ->
            ( isoCode, { name = "Svalbard and Jan Mayen", dialCode = "47" } )

        "SZ" ->
            ( isoCode, { name = "Swaziland", dialCode = "268" } )

        "SE" ->
            ( isoCode, { name = "Sweden (Sverige)", dialCode = "46" } )

        "CH" ->
            ( isoCode, { name = "Switzerland (Schweiz)", dialCode = "41" } )

        "SY" ->
            ( isoCode, { name = "Syria (\x202Bسوريا\x202C\x200E)", dialCode = "963" } )

        "TW" ->
            ( isoCode, { name = "Taiwan (台灣)", dialCode = "886" } )

        "TJ" ->
            ( isoCode, { name = "Tajikistan", dialCode = "992" } )

        "TZ" ->
            ( isoCode, { name = "Tanzania", dialCode = "255" } )

        "TH" ->
            ( isoCode, { name = "Thailand (ไทย)", dialCode = "66" } )

        "TL" ->
            ( isoCode, { name = "Timor-Leste", dialCode = "670" } )

        "TG" ->
            ( isoCode, { name = "Togo", dialCode = "228" } )

        "TK" ->
            ( isoCode, { name = "Tokelau", dialCode = "690" } )

        "TO" ->
            ( isoCode, { name = "Tonga", dialCode = "676" } )

        "TT" ->
            ( isoCode, { name = "Trinidad and Tobago", dialCode = "1868" } )

        "TN" ->
            ( isoCode, { name = "Tunisia (\x202Bتونس\x202C\x200E)", dialCode = "216" } )

        "TR" ->
            ( isoCode, { name = "Turkey (Türkiye)", dialCode = "90" } )

        "TM" ->
            ( isoCode, { name = "Turkmenistan", dialCode = "993" } )

        "TC" ->
            ( isoCode, { name = "Turks and Caicos Islands", dialCode = "1649" } )

        "TV" ->
            ( isoCode, { name = "Tuvalu", dialCode = "688" } )

        "VI" ->
            ( isoCode, { name = "U.S. Virgin Islands", dialCode = "1340" } )

        "UG" ->
            ( isoCode, { name = "Uganda", dialCode = "256" } )

        "UA" ->
            ( isoCode, { name = "Ukraine (Україна)", dialCode = "380" } )

        "AE" ->
            ( isoCode, { name = "United Arab Emirates (\x202Bالإمارات العربية المتحدة\x202C\x200E)", dialCode = "971" } )

        "GB" ->
            ( isoCode, { name = "United Kingdom", dialCode = "44" } )

        "US" ->
            ( isoCode, { name = "United States", dialCode = "1" } )

        "UY" ->
            ( isoCode, { name = "Uruguay", dialCode = "598" } )

        "UZ" ->
            ( isoCode, { name = "Uzbekistan (Oʻzbekiston)", dialCode = "998" } )

        "VU" ->
            ( isoCode, { name = "Vanuatu", dialCode = "678" } )

        "VA" ->
            ( isoCode, { name = "Vatican City (Città del Vaticano)", dialCode = "39" } )

        "VE" ->
            ( isoCode, { name = "Venezuela", dialCode = "58" } )

        "VN" ->
            ( isoCode, { name = "Vietnam (Việt Nam)", dialCode = "84" } )

        "WF" ->
            ( isoCode, { name = "Wallis and Futuna (Wallis-et-Futuna)", dialCode = "681" } )

        "EH" ->
            ( isoCode, { name = "Western Sahara (\x202Bالصحراء الغربية\x202C\x200E)", dialCode = "212" } )

        "YE" ->
            ( isoCode, { name = "Yemen (\x202Bاليمن\x202C\x200E)", dialCode = "967" } )

        "ZM" ->
            ( isoCode, { name = "Zambia", dialCode = "260" } )

        "ZW" ->
            ( isoCode, { name = "Zimbabwe", dialCode = "263" } )

        "AX" ->
            ( isoCode, { name = "Åland Islands", dialCode = "358" } )

        _ ->
            ( "", { name = "Unknown", dialCode = "" } )


isoCodes : List String
isoCodes =
    [ "AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BR", "IO", "VG", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "BQ", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CD", "CG", "CK", "CR", "CI", "HR", "CU", "CW", "CY", "CZ", "DK", "DJ", "DM", "DO", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GG", "GN", "GW", "GY", "HT", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IM", "IL", "IT", "JM", "JP", "JE", "JO", "KZ", "KE", "KI", "XK", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "ME", "MS", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "KP", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "BL", "SH", "KN", "LC", "MF", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SX", "SK", "SI", "SB", "SO", "ZA", "KR", "SS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TL", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "VI", "UG", "UA", "AE", "GB", "US", "UY", "UZ", "VU", "VA", "VE", "VN", "WF", "EH", "YE", "ZM", "ZW", "AX" ]
