CLASS zcl_fill_accounts_vrao DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_accounts_vrao IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    Types: tt_accounts TYPE SORTED TABLE OF zaccounts_vrao WITH UNIQUE KEY account_number.

    "read current timestamp
    GET TIME STAMP FIELD DATA(zv_tsl).

    "fill internal table
    DATA(lt_accounts) = VALUE tt_accounts(

        ( client ='100' account_number ='00000001' bank_customer_id ='100001' bank_name ='Volksbank' city = 'Gaertringen' balance ='200.00 ' currency ='EUR' account_category ='01' lastchangedat = zv_tsl )
        ( client ='100' account_number ='00000002' bank_customer_id ='200002' bank_name ='Sparkasse' city ='Schwetzingen' balance ='500.00 ' currency ='EUR' account_category ='02' lastchangedat = zv_tsl )
        ( client ='100' account_number ='00000003' bank_customer_id ='200003' bank_name ='Commerzbank' city ='Nuernberg' balance ='150.00 ' currency ='EUR' account_category ='02' lastchangedat = zv_tsl )
    ).


   "Delete possible entries; insert new entries
    DELETE FROM zaccounts_vrao.

    INSERT zaccounts_vrao FROM TABLE @lt_accounts.

    "Check result in console
    out->write( sy-dbcnt ).
    out->write(  'DONE!' ).

  ENDMETHOD.

ENDCLASS.
