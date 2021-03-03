// C:\Uni\2020_2021_2\VDF\Kolcsonzo_2021\AppSrc\Emberek.vw
// Emberek karbantart sa
//

Use DFClient.pkg
Use DFEntry.pkg
Use cDbTextEdit.pkg
Use dbSuggestionForm.pkg

Use cemberDataDictionary.dd

ACTIVATE_VIEW Activate_oEmberek FOR oEmberek
Object oEmberek is a dbView
    Set Location to 5 5
    Set Size to 160 365
    Set Label To "Emberek karbantart sa"
    Set Border_Style to Border_Thick


    Object oember_DD is a cemberDataDictionary
    End_Object 

    Set Main_DD To oember_DD
    Set Server  To oember_DD



    Object oemberID is a dbForm
        Entry_Item ember.ID
        Set Size to 12 42
        Set Location to 5 48
        Set peAnchors to anTopLeftRight
        Set Label to "Azonos¡t¢"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oemberNEV is a DbSuggestionForm
        Entry_Item ember.NEV
        Set Size to 12 250
        Set Location to 5 110
        Set peAnchors to anTopRight
        Set Label to "N‚v"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oemberIRSZAM is a dbForm
        Entry_Item ember.IRSZAM
        Set Size to 12 66
        Set Location to 19 48
        Set peAnchors to anTopLeftRight
        Set Label to "Ir ny¡t¢sz m"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oemberCIM is a dbForm
        Entry_Item ember.CIM
        Set Size to 12 250
        Set Location to 33 48
        Set peAnchors to anTopLeftRight
        Set Label to "C¡m"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oemberTEL is a dbForm
        Entry_Item ember.TEL
        Set Size to 12 66
        Set Location to 47 48
        Set peAnchors to anTopLeftRight
        Set Label to "Telefonsz m"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oemberEMAIL is a dbForm
        Entry_Item ember.EMAIL
        Set Size to 12 250
        Set Location to 61 48
        Set peAnchors to anTopLeftRight
        Set Label to "E-mail"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oemberMEGJ is a cDbTextEdit
        Entry_Item ember.MEGJ
        Set Size to 80 200
        Set Location to 75 48
        Set peAnchors to anTopLeftRight
        Set Label to "Megjegyz‚s"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object 

    Object oember_VAROSOK is a dbForm
        Entry_Item ember.VAROSOK
        Set Location to 19 143
        Set Size to 12 217
        Set Label to "V rosok"
        Set Label_Justification_Mode to JMode_Right
        Set Label_Col_Offset to 0
    End_Object


End_Object 
