module IntlPhoneInput.Svg
    exposing
        ( arrow
        , flag
        )

import IntlPhoneInput.Flag.AD as AD
import IntlPhoneInput.Flag.AE as AE
import IntlPhoneInput.Flag.AF as AF
import IntlPhoneInput.Flag.AG as AG
import IntlPhoneInput.Flag.AI as AI
import IntlPhoneInput.Flag.AL as AL
import IntlPhoneInput.Flag.AM as AM
import IntlPhoneInput.Flag.AO as AO
import IntlPhoneInput.Flag.AR as AR
import IntlPhoneInput.Flag.AS as AS
import IntlPhoneInput.Flag.AT as AT
import IntlPhoneInput.Flag.AU as AU
import IntlPhoneInput.Flag.AW as AW
import IntlPhoneInput.Flag.AX as AX
import IntlPhoneInput.Flag.AZ as AZ
import IntlPhoneInput.Flag.BA as BA
import IntlPhoneInput.Flag.BB as BB
import IntlPhoneInput.Flag.BD as BD
import IntlPhoneInput.Flag.BE as BE
import IntlPhoneInput.Flag.BF as BF
import IntlPhoneInput.Flag.BG as BG
import IntlPhoneInput.Flag.BH as BH
import IntlPhoneInput.Flag.BI as BI
import IntlPhoneInput.Flag.BJ as BJ
import IntlPhoneInput.Flag.BL as BL
import IntlPhoneInput.Flag.BM as BM
import IntlPhoneInput.Flag.BN as BN
import IntlPhoneInput.Flag.BO as BO
import IntlPhoneInput.Flag.BQ as BQ
import IntlPhoneInput.Flag.BR as BR
import IntlPhoneInput.Flag.BS as BS
import IntlPhoneInput.Flag.BT as BT
import IntlPhoneInput.Flag.BW as BW
import IntlPhoneInput.Flag.BY as BY
import IntlPhoneInput.Flag.BZ as BZ
import IntlPhoneInput.Flag.CA as CA
import IntlPhoneInput.Flag.CC as CC
import IntlPhoneInput.Flag.CD as CD
import IntlPhoneInput.Flag.CF as CF
import IntlPhoneInput.Flag.CG as CG
import IntlPhoneInput.Flag.CH as CH
import IntlPhoneInput.Flag.CI as CI
import IntlPhoneInput.Flag.CK as CK
import IntlPhoneInput.Flag.CL as CL
import IntlPhoneInput.Flag.CM as CM
import IntlPhoneInput.Flag.CN as CN
import IntlPhoneInput.Flag.CO as CO
import IntlPhoneInput.Flag.CR as CR
import IntlPhoneInput.Flag.CU as CU
import IntlPhoneInput.Flag.CV as CV
import IntlPhoneInput.Flag.CW as CW
import IntlPhoneInput.Flag.CX as CX
import IntlPhoneInput.Flag.CY as CY
import IntlPhoneInput.Flag.CZ as CZ
import IntlPhoneInput.Flag.DE as DE
import IntlPhoneInput.Flag.DJ as DJ
import IntlPhoneInput.Flag.DK as DK
import IntlPhoneInput.Flag.DM as DM
import IntlPhoneInput.Flag.DO as DO
import IntlPhoneInput.Flag.DZ as DZ
import IntlPhoneInput.Flag.EC as EC
import IntlPhoneInput.Flag.EE as EE
import IntlPhoneInput.Flag.EG as EG
import IntlPhoneInput.Flag.EH as EH
import IntlPhoneInput.Flag.ER as ER
import IntlPhoneInput.Flag.ES as ES
import IntlPhoneInput.Flag.ET as ET
import IntlPhoneInput.Flag.FI as FI
import IntlPhoneInput.Flag.FJ as FJ
import IntlPhoneInput.Flag.FK as FK
import IntlPhoneInput.Flag.FM as FM
import IntlPhoneInput.Flag.FO as FO
import IntlPhoneInput.Flag.FR as FR
import IntlPhoneInput.Flag.GA as GA
import IntlPhoneInput.Flag.GB as GB
import IntlPhoneInput.Flag.GD as GD
import IntlPhoneInput.Flag.GE as GE
import IntlPhoneInput.Flag.GF as GF
import IntlPhoneInput.Flag.GG as GG
import IntlPhoneInput.Flag.GH as GH
import IntlPhoneInput.Flag.GI as GI
import IntlPhoneInput.Flag.GL as GL
import IntlPhoneInput.Flag.GM as GM
import IntlPhoneInput.Flag.GN as GN
import IntlPhoneInput.Flag.GP as GP
import IntlPhoneInput.Flag.GQ as GQ
import IntlPhoneInput.Flag.GR as GR
import IntlPhoneInput.Flag.GT as GT
import IntlPhoneInput.Flag.GU as GU
import IntlPhoneInput.Flag.GW as GW
import IntlPhoneInput.Flag.GY as GY
import IntlPhoneInput.Flag.HK as HK
import IntlPhoneInput.Flag.HN as HN
import IntlPhoneInput.Flag.HR as HR
import IntlPhoneInput.Flag.HT as HT
import IntlPhoneInput.Flag.HU as HU
import IntlPhoneInput.Flag.ID as ID
import IntlPhoneInput.Flag.IE as IE
import IntlPhoneInput.Flag.IL as IL
import IntlPhoneInput.Flag.IM as IM
import IntlPhoneInput.Flag.IN as IN
import IntlPhoneInput.Flag.IO as IO
import IntlPhoneInput.Flag.IQ as IQ
import IntlPhoneInput.Flag.IR as IR
import IntlPhoneInput.Flag.IS as IS
import IntlPhoneInput.Flag.IT as IT
import IntlPhoneInput.Flag.JE as JE
import IntlPhoneInput.Flag.JM as JM
import IntlPhoneInput.Flag.JO as JO
import IntlPhoneInput.Flag.JP as JP
import IntlPhoneInput.Flag.KE as KE
import IntlPhoneInput.Flag.KG as KG
import IntlPhoneInput.Flag.KH as KH
import IntlPhoneInput.Flag.KI as KI
import IntlPhoneInput.Flag.KM as KM
import IntlPhoneInput.Flag.KN as KN
import IntlPhoneInput.Flag.KP as KP
import IntlPhoneInput.Flag.KR as KR
import IntlPhoneInput.Flag.KW as KW
import IntlPhoneInput.Flag.KY as KY
import IntlPhoneInput.Flag.KZ as KZ
import IntlPhoneInput.Flag.LA as LA
import IntlPhoneInput.Flag.LB as LB
import IntlPhoneInput.Flag.LC as LC
import IntlPhoneInput.Flag.LI as LI
import IntlPhoneInput.Flag.LK as LK
import IntlPhoneInput.Flag.LR as LR
import IntlPhoneInput.Flag.LS as LS
import IntlPhoneInput.Flag.LT as LT
import IntlPhoneInput.Flag.LU as LU
import IntlPhoneInput.Flag.LV as LV
import IntlPhoneInput.Flag.LY as LY
import IntlPhoneInput.Flag.MA as MA
import IntlPhoneInput.Flag.MC as MC
import IntlPhoneInput.Flag.MD as MD
import IntlPhoneInput.Flag.ME as ME
import IntlPhoneInput.Flag.MF as MF
import IntlPhoneInput.Flag.MG as MG
import IntlPhoneInput.Flag.MH as MH
import IntlPhoneInput.Flag.MK as MK
import IntlPhoneInput.Flag.ML as ML
import IntlPhoneInput.Flag.MM as MM
import IntlPhoneInput.Flag.MN as MN
import IntlPhoneInput.Flag.MO as MO
import IntlPhoneInput.Flag.MP as MP
import IntlPhoneInput.Flag.MQ as MQ
import IntlPhoneInput.Flag.MR as MR
import IntlPhoneInput.Flag.MS as MS
import IntlPhoneInput.Flag.MT as MT
import IntlPhoneInput.Flag.MU as MU
import IntlPhoneInput.Flag.MV as MV
import IntlPhoneInput.Flag.MW as MW
import IntlPhoneInput.Flag.MX as MX
import IntlPhoneInput.Flag.MY as MY
import IntlPhoneInput.Flag.MZ as MZ
import IntlPhoneInput.Flag.NA as NA
import IntlPhoneInput.Flag.NC as NC
import IntlPhoneInput.Flag.NE as NE
import IntlPhoneInput.Flag.NF as NF
import IntlPhoneInput.Flag.NG as NG
import IntlPhoneInput.Flag.NI as NI
import IntlPhoneInput.Flag.NL as NL
import IntlPhoneInput.Flag.NO as NO
import IntlPhoneInput.Flag.NP as NP
import IntlPhoneInput.Flag.NR as NR
import IntlPhoneInput.Flag.NU as NU
import IntlPhoneInput.Flag.NZ as NZ
import IntlPhoneInput.Flag.OM as OM
import IntlPhoneInput.Flag.PA as PA
import IntlPhoneInput.Flag.PE as PE
import IntlPhoneInput.Flag.PF as PF
import IntlPhoneInput.Flag.PG as PG
import IntlPhoneInput.Flag.PH as PH
import IntlPhoneInput.Flag.PK as PK
import IntlPhoneInput.Flag.PL as PL
import IntlPhoneInput.Flag.PM as PM
import IntlPhoneInput.Flag.PR as PR
import IntlPhoneInput.Flag.PS as PS
import IntlPhoneInput.Flag.PT as PT
import IntlPhoneInput.Flag.PW as PW
import IntlPhoneInput.Flag.PY as PY
import IntlPhoneInput.Flag.QA as QA
import IntlPhoneInput.Flag.RE as RE
import IntlPhoneInput.Flag.RO as RO
import IntlPhoneInput.Flag.RS as RS
import IntlPhoneInput.Flag.RU as RU
import IntlPhoneInput.Flag.RW as RW
import IntlPhoneInput.Flag.SA as SA
import IntlPhoneInput.Flag.SB as SB
import IntlPhoneInput.Flag.SC as SC
import IntlPhoneInput.Flag.SD as SD
import IntlPhoneInput.Flag.SE as SE
import IntlPhoneInput.Flag.SG as SG
import IntlPhoneInput.Flag.SH as SH
import IntlPhoneInput.Flag.SI as SI
import IntlPhoneInput.Flag.SJ as SJ
import IntlPhoneInput.Flag.SK as SK
import IntlPhoneInput.Flag.SL as SL
import IntlPhoneInput.Flag.SM as SM
import IntlPhoneInput.Flag.SN as SN
import IntlPhoneInput.Flag.SO as SO
import IntlPhoneInput.Flag.SR as SR
import IntlPhoneInput.Flag.SS as SS
import IntlPhoneInput.Flag.ST as ST
import IntlPhoneInput.Flag.SV as SV
import IntlPhoneInput.Flag.SX as SX
import IntlPhoneInput.Flag.SY as SY
import IntlPhoneInput.Flag.SZ as SZ
import IntlPhoneInput.Flag.TC as TC
import IntlPhoneInput.Flag.TD as TD
import IntlPhoneInput.Flag.TG as TG
import IntlPhoneInput.Flag.TH as TH
import IntlPhoneInput.Flag.TJ as TJ
import IntlPhoneInput.Flag.TK as TK
import IntlPhoneInput.Flag.TL as TL
import IntlPhoneInput.Flag.TM as TM
import IntlPhoneInput.Flag.TN as TN
import IntlPhoneInput.Flag.TO as TO
import IntlPhoneInput.Flag.TR as TR
import IntlPhoneInput.Flag.TT as TT
import IntlPhoneInput.Flag.TV as TV
import IntlPhoneInput.Flag.TW as TW
import IntlPhoneInput.Flag.TZ as TZ
import IntlPhoneInput.Flag.UA as UA
import IntlPhoneInput.Flag.UG as UG
import IntlPhoneInput.Flag.US as US
import IntlPhoneInput.Flag.UY as UY
import IntlPhoneInput.Flag.UZ as UZ
import IntlPhoneInput.Flag.Unknown as Unknown
import IntlPhoneInput.Flag.VA as VA
import IntlPhoneInput.Flag.VC as VC
import IntlPhoneInput.Flag.VE as VE
import IntlPhoneInput.Flag.VG as VG
import IntlPhoneInput.Flag.VI as VI
import IntlPhoneInput.Flag.VN as VN
import IntlPhoneInput.Flag.VU as VU
import IntlPhoneInput.Flag.WF as WF
import IntlPhoneInput.Flag.WS as WS
import IntlPhoneInput.Flag.XK as XK
import IntlPhoneInput.Flag.YE as YE
import IntlPhoneInput.Flag.YT as YT
import IntlPhoneInput.Flag.ZA as ZA
import IntlPhoneInput.Flag.ZM as ZM
import IntlPhoneInput.Flag.ZW as ZW
import Svg exposing (Svg, polygon, svg)
import Svg.Attributes exposing (..)


arrow : Svg msg
arrow =
    let
        rotation =
            "90"
    in
    svg [ width "100%", height "100%", viewBox "0 0 20 20", style <| "transform: rotate(" ++ rotation ++ "deg);" ]
        [ polygon [ points "0 0, 0 20, 16 10" ] []
        ]


flag : String -> Svg msg
flag isoCode =
    case String.toUpper isoCode of
        "AE" ->
            AE.flag

        "AF" ->
            AF.flag

        "AG" ->
            AG.flag

        "AI" ->
            AI.flag

        "AL" ->
            AL.flag

        "AM" ->
            AM.flag

        "AO" ->
            AO.flag

        "AR" ->
            AR.flag

        "AS" ->
            AS.flag

        "AT" ->
            AT.flag

        "AU" ->
            AU.flag

        "AW" ->
            AW.flag

        "AX" ->
            AX.flag

        "AZ" ->
            AZ.flag

        "BA" ->
            BA.flag

        "BB" ->
            BB.flag

        "BD" ->
            BD.flag

        "BE" ->
            BE.flag

        "BF" ->
            BF.flag

        "BG" ->
            BG.flag

        "BH" ->
            BH.flag

        "BI" ->
            BI.flag

        "BJ" ->
            BJ.flag

        "BL" ->
            BL.flag

        "BM" ->
            BM.flag

        "BN" ->
            BN.flag

        "BO" ->
            BO.flag

        "BQ" ->
            BQ.flag

        "BR" ->
            BR.flag

        "BS" ->
            BS.flag

        "BT" ->
            BT.flag

        "BW" ->
            BW.flag

        "BY" ->
            BY.flag

        "BZ" ->
            BZ.flag

        "CA" ->
            CA.flag

        "CC" ->
            CC.flag

        "CD" ->
            CD.flag

        "CF" ->
            CF.flag

        "CG" ->
            CG.flag

        "CH" ->
            CH.flag

        "CI" ->
            CI.flag

        "CK" ->
            CK.flag

        "CL" ->
            CL.flag

        "CM" ->
            CM.flag

        "CN" ->
            CN.flag

        "CO" ->
            CO.flag

        "CR" ->
            CR.flag

        "CU" ->
            CU.flag

        "CV" ->
            CV.flag

        "CW" ->
            CW.flag

        "CX" ->
            CX.flag

        "CY" ->
            CY.flag

        "CZ" ->
            CZ.flag

        "DE" ->
            DE.flag

        "DJ" ->
            DJ.flag

        "DK" ->
            DK.flag

        "DM" ->
            DM.flag

        "DO" ->
            DO.flag

        "DZ" ->
            DZ.flag

        "EC" ->
            EC.flag

        "EE" ->
            EE.flag

        "EG" ->
            EG.flag

        "EH" ->
            EH.flag

        "ER" ->
            ER.flag

        "ES" ->
            ES.flag

        "ET" ->
            ET.flag

        "FI" ->
            FI.flag

        "FJ" ->
            FJ.flag

        "FK" ->
            FK.flag

        "FM" ->
            FM.flag

        "FO" ->
            FO.flag

        "FR" ->
            FR.flag

        "GA" ->
            GA.flag

        "GB" ->
            GB.flag

        "GD" ->
            GD.flag

        "GE" ->
            GE.flag

        "GF" ->
            GF.flag

        "GG" ->
            GG.flag

        "GH" ->
            GH.flag

        "GI" ->
            GI.flag

        "GL" ->
            GL.flag

        "GM" ->
            GM.flag

        "GN" ->
            GN.flag

        "GP" ->
            GP.flag

        "GQ" ->
            GQ.flag

        "GR" ->
            GR.flag

        "GT" ->
            GT.flag

        "GU" ->
            GU.flag

        "GW" ->
            GW.flag

        "GY" ->
            GY.flag

        "HK" ->
            HK.flag

        "HN" ->
            HN.flag

        "HR" ->
            HR.flag

        "HT" ->
            HT.flag

        "HU" ->
            HU.flag

        "ID" ->
            ID.flag

        "IE" ->
            IE.flag

        "IL" ->
            IL.flag

        "IM" ->
            IM.flag

        "IN" ->
            IN.flag

        "IO" ->
            IO.flag

        "IQ" ->
            IQ.flag

        "IR" ->
            IR.flag

        "IS" ->
            IS.flag

        "IT" ->
            IT.flag

        "JE" ->
            JE.flag

        "JM" ->
            JM.flag

        "JO" ->
            JO.flag

        "JP" ->
            JP.flag

        "KE" ->
            KE.flag

        "KG" ->
            KG.flag

        "KH" ->
            KH.flag

        "KI" ->
            KI.flag

        "KM" ->
            KM.flag

        "KN" ->
            KN.flag

        "KP" ->
            KP.flag

        "KR" ->
            KR.flag

        "KW" ->
            KW.flag

        "KY" ->
            KY.flag

        "KZ" ->
            KZ.flag

        "LA" ->
            LA.flag

        "LB" ->
            LB.flag

        "LC" ->
            LC.flag

        "LI" ->
            LI.flag

        "LK" ->
            LK.flag

        "LR" ->
            LR.flag

        "LS" ->
            LS.flag

        "LT" ->
            LT.flag

        "LU" ->
            LU.flag

        "LV" ->
            LV.flag

        "LY" ->
            LY.flag

        "MA" ->
            MA.flag

        "MC" ->
            MC.flag

        "MD" ->
            MD.flag

        "ME" ->
            ME.flag

        "MF" ->
            MF.flag

        "MG" ->
            MG.flag

        "MH" ->
            MH.flag

        "MK" ->
            MK.flag

        "ML" ->
            ML.flag

        "MM" ->
            MM.flag

        "MN" ->
            MN.flag

        "MO" ->
            MO.flag

        "MP" ->
            MP.flag

        "MQ" ->
            MQ.flag

        "MR" ->
            MR.flag

        "MS" ->
            MS.flag

        "MT" ->
            MT.flag

        "MU" ->
            MU.flag

        "MV" ->
            MV.flag

        "MW" ->
            MW.flag

        "MX" ->
            MX.flag

        "MY" ->
            MY.flag

        "MZ" ->
            MZ.flag

        "NA" ->
            NA.flag

        "NC" ->
            NC.flag

        "NE" ->
            NE.flag

        "NF" ->
            NF.flag

        "NG" ->
            NG.flag

        "NI" ->
            NI.flag

        "NL" ->
            NL.flag

        "NO" ->
            NO.flag

        "NP" ->
            NP.flag

        "NR" ->
            NR.flag

        "NU" ->
            NU.flag

        "NZ" ->
            NZ.flag

        "OM" ->
            OM.flag

        "PA" ->
            PA.flag

        "PE" ->
            PE.flag

        "PF" ->
            PF.flag

        "PG" ->
            PG.flag

        "PH" ->
            PH.flag

        "PK" ->
            PK.flag

        "PL" ->
            PL.flag

        "PM" ->
            PM.flag

        "PR" ->
            PR.flag

        "PS" ->
            PS.flag

        "PT" ->
            PT.flag

        "PW" ->
            PW.flag

        "PY" ->
            PY.flag

        "QA" ->
            QA.flag

        "RE" ->
            RE.flag

        "RO" ->
            RO.flag

        "RS" ->
            RS.flag

        "RU" ->
            RU.flag

        "RW" ->
            RW.flag

        "SA" ->
            SA.flag

        "SB" ->
            SB.flag

        "SC" ->
            SC.flag

        "SD" ->
            SD.flag

        "SE" ->
            SE.flag

        "SG" ->
            SG.flag

        "SH" ->
            SH.flag

        "SI" ->
            SI.flag

        "SJ" ->
            SJ.flag

        "SK" ->
            SK.flag

        "SL" ->
            SL.flag

        "SM" ->
            SM.flag

        "SN" ->
            SN.flag

        "SO" ->
            SO.flag

        "SR" ->
            SR.flag

        "SS" ->
            SS.flag

        "ST" ->
            ST.flag

        "SV" ->
            SV.flag

        "SX" ->
            SX.flag

        "SY" ->
            SY.flag

        "SZ" ->
            SZ.flag

        "TC" ->
            TC.flag

        "TD" ->
            TD.flag

        "TG" ->
            TG.flag

        "TH" ->
            TH.flag

        "TJ" ->
            TJ.flag

        "TK" ->
            TK.flag

        "TL" ->
            TL.flag

        "TM" ->
            TM.flag

        "TN" ->
            TN.flag

        "TO" ->
            TO.flag

        "TR" ->
            TR.flag

        "TT" ->
            TT.flag

        "TV" ->
            TV.flag

        "TW" ->
            TW.flag

        "TZ" ->
            TZ.flag

        "UA" ->
            UA.flag

        "UG" ->
            UG.flag

        "US" ->
            US.flag

        "UY" ->
            UY.flag

        "UZ" ->
            UZ.flag

        "VA" ->
            VA.flag

        "VC" ->
            VC.flag

        "VE" ->
            VE.flag

        "VG" ->
            VG.flag

        "VI" ->
            VI.flag

        "VN" ->
            VN.flag

        "VU" ->
            VU.flag

        "WF" ->
            WF.flag

        "WS" ->
            WS.flag

        "XK" ->
            XK.flag

        "YE" ->
            YE.flag

        "YT" ->
            YT.flag

        "ZA" ->
            ZA.flag

        "ZM" ->
            ZM.flag

        "ZW" ->
            ZW.flag

        _ ->
            Unknown.flag
