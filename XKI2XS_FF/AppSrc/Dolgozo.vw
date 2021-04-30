// F:\Uni\2020_2021_2\2020_2021_2_VDF\XKI2XS_FF\AppSrc\Dolgozo.vw
// Dolgozók karbantartása
//

Use DFClient.pkg
Use DFEntry.pkg
Use dbSuggestionForm.pkg

Use cdolgozokDataDictionary.dd

ACTIVATE_VIEW Activate_oDolgozo FOR oDolgozo
Object oDolgozo is a dbView
    Set Location to 5 5
    Set Size to 36 423
    Set Label To "Dolgozók karbantartása"
    Set Border_Style to Border_Thick


    Object odolgozok_DD is a cdolgozokDataDictionary
    End_Object 

    Set Main_DD To odolgozok_DD
    Set Server  To odolgozok_DD



    Object odolgozokdolgozoID is a dbForm
        Entry_Item dolgozok.dolgozoID
        Set Size to 12 34
        Set Location to 5 84
        Set peAnchors to anTopLeftRight
        Set Label to "Azonosító"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 79
        Set Label_row_Offset to 0
    End_Object 

    Object odolgozoknev is a dbSuggestionForm
        Entry_Item dolgozok.nev
        Set Size to 12 250
        Set Location to 5 168
        Set peAnchors to anTopRight
        Set Label to "Dolgozó neve"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 45
        Set Label_row_Offset to 0
    End_Object 

    Object odolgozokszemelyi is a dbForm
        Entry_Item dolgozok.szemelyi
        Set Size to 12 96
        Set Location to 19 84
        Set peAnchors to anTopLeftRight
        Set Label to "Dolgozó személyi száma"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 79
        Set Label_row_Offset to 0
    End_Object 


End_Object 
