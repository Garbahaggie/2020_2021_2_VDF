// F:\Uni\2020_2021_2\2020_2021_2_VDF\XKI2XS_FF\AppSrc\Munkalap.vw
// Munkalapok karbantartása
//

Use DFClient.pkg
Use DFEntry.pkg
Use DfCEntry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cdolgozokDataDictionary.dd
Use ccipoDataDictionary.dd
Use cgyartosorDataDictionary.dd
Use cmunkalapDataDictionary.dd
Use cmunkatetelDataDictionary.dd

Use MonthCalendarPrompt.dg

ACTIVATE_VIEW Activate_oMunkalap FOR oMunkalap
Object oMunkalap is a dbView
    Set Location to 5 5
    Set Size to 154 327
    Set Label To "Munkalapok karbantartása"
    Set Border_Style to Border_Thick


    Object odolgozok_DD is a cdolgozokDataDictionary
    End_Object 

    Object ocipo_DD is a ccipoDataDictionary
    End_Object 

    Object ogyartosor_DD is a cgyartosorDataDictionary
    End_Object 

    Object omunkalap_DD is a cmunkalapDataDictionary
        Set DDO_Server To ogyartosor_DD
        Set DDO_Server To odolgozok_DD
        // this lets you save a new parent DD from within child DD
        Set Allow_Foreign_New_Save_State to True
    End_Object 

    Object omunkatetel_DD is a cmunkatetelDataDictionary
        Set DDO_Server To ocipo_DD
        Set DDO_Server To omunkalap_DD
        Set Constrain_File To munkalap.File_Number
    End_Object 

    Set Main_DD To omunkalap_DD
    Set Server  To omunkalap_DD



    Object omunkalapmunkalapID is a dbForm
        Entry_Item munkalap.munkalapID
        Set Size to 12 42
        Set Location to 5 72
        Set peAnchors to anTopLeftRight
        Set Label to "Munkalap Azonosító"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 67
        Set Label_row_Offset to 0
    End_Object 

    Object omunkalapdatum is a dbForm
        Entry_Item munkalap.datum
        Set Size to 12 66
        Set Location to 5 176
        Set peAnchors to anTopRight
        Set Label to "Munkalap Dátum"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 57
        Set Label_row_Offset to 0        
        Set Prompt_Object to oMonthCalendarPrompt
    End_Object 

    Object ogyartosorgyartosorSorszam is a dbForm
        Entry_Item gyartosor.gyartosorSorszam
        Set Size to 12 34
        Set Location to 19 72
        Set peAnchors to anTopLeftRight
        Set Label to "Gyártósor sorszám"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 67
        Set Label_row_Offset to 0
    End_Object 

    Object ogyartosortipus is a dbComboForm
        Entry_Item gyartosor.tipus
        Set Size to 12 162
        Set Location to 19 161
        Set peAnchors to anTopRight
        Set Label to "Gyártósor típus"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 50
        Set Label_row_Offset to 0
        Set Enabled_State to False
    End_Object 

    Object odolgozokdolgozoID is a dbForm
        Entry_Item dolgozok.dolgozoID
        Set Size to 12 34
        Set Location to 33 72
        Set peAnchors to anTopLeftRight
        Set Label to "Dolgozó Azonosító"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 67
        Set Label_row_Offset to 0
    End_Object 

    Object odolgozoknev is a dbForm
        Entry_Item dolgozok.nev
        Set Size to 12 250
        Set Location to 47 72
        Set peAnchors to anTopLeftRight
        Set Label to "Dolgozó neve"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 67
        Set Label_row_Offset to 0
        Set Enabled_State to False
    End_Object 

    Object omunkalapraforditottIdo is a dbForm
        Entry_Item munkalap.raforditottIdo
        Set Size to 12 34
        Set Location to 61 72
        Set peAnchors to anTopLeftRight
        Set Label to "Ráfordított idő"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 67
        Set Label_row_Offset to 0
        Set Enabled_State to False
    End_Object 
    
    Object omunkalapraforditottIdo is a dbForm
        Entry_Item munkalap.osszMenny
        Set Size to 12 34
        Set Location to 61 178
        Set peAnchors to anTopRight
        Set Label to "Összmennyiség"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 67
        Set Label_row_Offset to 0
        Set Enabled_State to False
    End_Object 

    Object oDetailGrid is a cDbCJGrid
        Set Size to 66 319
        Set Location to 83 5
        Set Server to omunkatetel_DD
        Set Ordering to 1
        Set peAnchors to anAll
        Set psLayoutSection to "oMunkalap_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

        Object ocipo_cipoID is a cDbCJGridColumn
            Entry_Item cipo.cipoID
            Set piWidth to 71
            Set psCaption to "Cipő"
        End_Object 

        Object ocipo_nev is a cDbCJGridColumn
            Entry_Item cipo.nev
            Set piWidth to 389
            Set psCaption to "Név"
        End_Object 

        Object omunkatetel_ido is a cDbCJGridColumn
            Entry_Item munkatetel.ido
            Set piWidth to 72
            Set psCaption to "Idő"
        End_Object 
        
        Object omunkatetel_ido is a cDbCJGridColumn
            Entry_Item munkatetel.menny
            Set piWidth to 72
            Set psCaption to "Menny."
        End_Object 

    End_Object 

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function 

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function 

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to (RefFunc(ConfirmSaveHeader))
    Set Verify_Delete_MSG     to (RefFunc(ConfirmDeleteHeader))
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False


End_Object 
