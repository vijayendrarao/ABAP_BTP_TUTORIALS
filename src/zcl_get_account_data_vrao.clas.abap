"!<p class="shorttext synchronized"> Class to get Account Data from custom table ZACCOUNTS_VRAO</p>
"!<p class="shorttext synchronized"> Method main gets the data and prints out in the console</p>
"! <ol>
"! <li> This class is developed based on the Tutorials</li>
"! <li> This is line two</li>
"! <li> This is line three</li>
"! <li> This is line four</li>
"! <li> This is line five</li>
"! </ol>
"! <strong><p>Implements the interface { @link INTF: if_oo_adt_classrun } </p></strong>
CLASS zcl_get_account_data_vrao DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
     if_oo_adt_classrun.


    METHODS:
      "!<p class="shorttext synchronized"> Method main gets the data and prints out in the console</p>
      test.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_get_account_data_vrao IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_accounts TYPE ztt_accounts_vrao.

    SELECT * FROM Zaccounts_vrao INTO TABLE @lt_accounts.

    out->write( name = 'ACCOUNTS' data = lt_accounts ).

  ENDMETHOD.


  METHOD test.

  ENDMETHOD.

ENDCLASS.
