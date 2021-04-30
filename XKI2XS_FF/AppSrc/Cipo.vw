// F:\Uni\2020_2021_2\2020_2021_2_VDF\XKI2XS_FF\AppSrc\Cipo.vw
// Cipők karbantartása
//

Use DFClient.pkg
Use DFEntry.pkg

Use ccipoDataDictionary.dd

ACTIVATE_VIEW Activate_oCipo FOR oCipo
Object oCipo is a dbView
    Set Location to 5 5
    Set Size to 36 309
    Set Label To "Cipők karbantartása"
    Set Border_Style to Border_Thick


    Object ocipo_DD is a ccipoDataDictionary
    End_Object 

    Set Main_DD To ocipo_DD
    Set Server  To ocipo_DD



    Object ocipocipoID is a dbForm
        Entry_Item cipo.cipoID
        Set Size to 12 34
        Set Location to 5 54
        Set peAnchors to anTopLeftRight
        Set Label to "Cipő azonosító"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 49
        Set Label_row_Offset to 0
    End_Object 

    Object ocipoegysegar is a dbForm
        Entry_Item cipo.egysegar
        Set Size to 12 42
        Set Location to 5 121
        Set peAnchors to anTopRight
        Set Label to "Cipő ára"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 28
        Set Label_row_Offset to 0
    End_Object 

    Object ociponev is a dbForm
        Entry_Item cipo.nev
        Set Size to 12 250
        Set Location to 19 54
        Set peAnchors to anTopLeftRight
        Set Label to "Cipő neve"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 49
        Set Label_row_Offset to 0
    End_Object 


End_Object 
