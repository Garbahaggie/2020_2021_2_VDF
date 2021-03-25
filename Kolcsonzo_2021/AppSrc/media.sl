// media.sl
// MÇdi†k keresÇse

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cemberDataDictionary.dd
Use cmediaDataDictionary.dd

CD_Popup_Object media_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 450
    Set Label To "MÇdi†k keresÇse"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oember_DD is a cemberDataDictionary
    End_Object 

    Object omedia_DD is a cmediaDataDictionary
        Set DDO_Server To oember_DD
    End_Object 

    Set Main_DD To omedia_DD
    Set Server  To omedia_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 440
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "media_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object omedia_mediaid is a cDbCJGridColumn
            Entry_Item media.mediaid
            Set piWidth to 74
            Set psCaption to "Azon."
        End_Object 

        Object omedia_nev is a cDbCJGridColumn
            Entry_Item media.nev
            Set piWidth to 310
            Set psCaption to "NÇv"
        End_Object 

        Object omedia_szerzo is a cDbCJGridColumn
            Entry_Item media.szerzo
            Set piWidth to 310
            Set psCaption to "Szerzã"
        End_Object 

        Object omedia_tipus is a cDbCJGridColumn
            Entry_Item media.tipus
            Set piWidth to 124
            Set psCaption to "T°pus"
        End_Object 

        Object omedia_ev is a cDbCJGridColumn
            Entry_Item media.ev
            Set piWidth to 70
            Set psCaption to "êvsz†m"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 287
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 341
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 395
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // media_sl
