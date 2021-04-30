// F:\Uni\2020_2021_2\2020_2021_2_VDF\XKI2XS_FF\AppSrc\Gyartosor.vw
// Gyártósorok karbantartása
//

Use DFClient.pkg
Use DFEntry.pkg
Use DfCEntry.pkg

Use cgyartosorDataDictionary.dd

ACTIVATE_VIEW Activate_oGyartosor FOR oGyartosor
Object oGyartosor is a dbView
    Set Location to 5 5
    Set Size to 36 149
    Set Label To "Gyártósorok karbantartása"
    Set Border_Style to Border_Thick


    Object ogyartosor_DD is a cgyartosorDataDictionary
    End_Object 

    Set Main_DD To ogyartosor_DD
    Set Server  To ogyartosor_DD



    Object ogyartosorgyartosorSorszam is a dbForm
        Entry_Item gyartosor.gyartosorSorszam
        Set Size to 12 34
        Set Location to 5 65
        Set peAnchors to anTopLeftRight
        Set Label to "Gyártósor sorszám"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 60
        Set Label_row_Offset to 0
    End_Object 

    Object ogyartosortipus is a dbComboForm
        Entry_Item gyartosor.tipus
        Set Size to 12 79
        Set Location to 19 65
        Set peAnchors to anTopLeftRight
        Set Label to "Gyártósor típus"
        Set Label_Justification_mode to jMode_Left
        Set Label_Col_Offset to 60
        Set Label_row_Offset to 0
    End_Object 


End_Object 
