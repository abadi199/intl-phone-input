port module Stylesheets exposing (..)

import Css.File exposing (CssCompilerProgram, CssFileStructure)
import IntlPhoneInput.Config.Default as Default
import IntlPhoneInput.Css


port files : CssFileStructure -> Cmd msg


fileStructure : CssFileStructure
fileStructure =
    Css.File.toFileStructure
        [ ( "intl-phone-input.css"
          , Css.File.compile
                [ IntlPhoneInput.Css.css Default.namespace
                ]
          )
        ]


main : CssCompilerProgram
main =
    Css.File.compiler files fileStructure
