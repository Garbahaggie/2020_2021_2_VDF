// gyartosor.sl
// Gyártósorok keresése

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cgyartosorDataDictionary.dd

CD_Popup_Object gyartosor_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 116
    Set Label To "Gyártósorok keresése"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object ogyartosor_DD is a cgyartosorDataDictionary
    End_Object 

    Set Main_DD To ogyartosor_DD
    Set Server  To ogyartosor_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 106
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "gyartosor_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object ogyartosor_gyartosorSorszam is a cDbCJGridColumn
            Entry_Item gyartosor.gyartosorSorszam
            Set piWidth to 60
            Set psCaption to "Sorszám"
        End_Object 

        Object ogyartosor_tipus is a cDbCJGridColumn
            Entry_Item gyartosor.tipus
            Set piWidth to 100
            Set psCaption to "Típus"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 -47
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 7
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 61
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // gyartosor_sl
