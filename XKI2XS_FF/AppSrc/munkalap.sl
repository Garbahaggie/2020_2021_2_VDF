// munkalap.sl
// Munkalap keresése

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cdolgozokDataDictionary.dd
Use cgyartosorDataDictionary.dd
Use cmunkalapDataDictionary.dd

CD_Popup_Object munkalap_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 421
    Set Label To "Munkalap keresése"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object odolgozok_DD is a cdolgozokDataDictionary
    End_Object 

    Object ogyartosor_DD is a cgyartosorDataDictionary
    End_Object 

    Object omunkalap_DD is a cmunkalapDataDictionary
        Set DDO_Server To ogyartosor_DD
        Set DDO_Server To odolgozok_DD
    End_Object 

    Set Main_DD To omunkalap_DD
    Set Server  To omunkalap_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 411
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "munkalap_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object omunkalap_munkalapID is a cDbCJGridColumn
            Entry_Item munkalap.munkalapID
            Set piWidth to 60
            Set psCaption to "Azon."
        End_Object 

        Object omunkalap_datum is a cDbCJGridColumn
            Entry_Item munkalap.datum
            Set piWidth to 100
            Set psCaption to "Dátum"
        End_Object 

        Object odolgozok_dolgozoID is a cDbCJGridColumn
            Entry_Item dolgozok.dolgozoID
            Set piWidth to 78
            Set psCaption to "Dolg. Azon."
        End_Object 

        Object odolgozok_nev is a cDbCJGridColumn
            Entry_Item dolgozok.nev
            Set piWidth to 250
            Set psCaption to "Név"
        End_Object 

        Object ogyartosor_gyartosorSorszam is a cDbCJGridColumn
            Entry_Item gyartosor.gyartosorSorszam
            Set piWidth to 80
            Set psCaption to "Gy. Sorszám"
        End_Object 

        Object ogyartosor_tipus is a cDbCJGridColumn
            Entry_Item gyartosor.tipus
            Set piWidth to 100
            Set psCaption to "Típus"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 258
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 312
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 366
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // munkalap_sl
