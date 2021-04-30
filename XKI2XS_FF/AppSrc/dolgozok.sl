// dolgozok.sl
// Dolgozók keresése

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cdolgozokDataDictionary.dd

CD_Popup_Object dolgozok_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 288
    Set Label To "Dolgozók keresése"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object odolgozok_DD is a cdolgozokDataDictionary
    End_Object 

    Set Main_DD To odolgozok_DD
    Set Server  To odolgozok_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 278
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "dolgozok_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object odolgozok_dolgozoID is a cDbCJGridColumn
            Entry_Item dolgozok.dolgozoID
            Set piWidth to 46
            Set psCaption to "Azon."
        End_Object 

        Object odolgozok_nev is a cDbCJGridColumn
            Entry_Item dolgozok.nev
            Set piWidth to 250
            Set psCaption to "Név"
        End_Object 

        Object odolgozok_szemelyi is a cDbCJGridColumn
            Entry_Item dolgozok.szemelyi
            Set piWidth to 150
            Set psCaption to "Személyi"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 125
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 179
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 233
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // dolgozok_sl
