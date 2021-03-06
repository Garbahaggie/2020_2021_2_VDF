// ember.sl
// Emberek keres�se

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cemberDataDictionary.dd

CD_Popup_Object ember_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 536
    Set Label To "Emberek keres�se"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oember_DD is a cemberDataDictionary
    End_Object 

    Set Main_DD To oember_DD
    Set Server  To oember_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 526
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "ember_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oember_ID is a cDbCJGridColumn
            Entry_Item ember.ID
            Set piWidth to 74
            Set psCaption to "Azon."
        End_Object 

        Object oember_NEV is a cDbCJGridColumn
            Entry_Item ember.NEV
            Set piWidth to 310
            Set psCaption to "N�v"
        End_Object 

        Object oember_IRSZAM is a cDbCJGridColumn
            Entry_Item ember.IRSZAM
            Set piWidth to 124
            Set psCaption to "Ir."
        End_Object 

        Object oember_VAROSOK is a cDbCJGridColumn
            Entry_Item ember.VAROSOK
            Set piWidth to 310
            Set psCaption to "VAROSOK"
        End_Object 

        Object oember_TEL is a cDbCJGridColumn
            Entry_Item ember.TEL
            Set piWidth to 248
            Set psCaption to "Tel."
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 373
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 427
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 481
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // ember_sl
