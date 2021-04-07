*&---------------------------------------------------------------------*
*& Report  Z_METODOS_POO_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_metodos_poo_p1011657.

CLASS rate DEFINITION .

  PUBLIC SECTION.
    CLASS-METHODS set_rate_base IMPORTING i_rate TYPE i. " Static
    METHODS set_rate_employee IMPORTING i_rate TYPE i.   "Non-Static
    METHODS see_rate.                                    "Non-Static


  PRIVATE SECTION.
    CLASS-DATA rate_base TYPE i.
    DATA rate_employee TYPE i.

ENDCLASS.

CLASS rate IMPLEMENTATION.

  METHOD set_rate_base.     "Static
    rate_base = i_rate.
  ENDMETHOD.

  METHOD set_rate_employee.  "Non Static
    rate_employee = i_rate.
  ENDMETHOD.

  METHOD see_rate.          "Non Static
    WRITE: / 'Base rate = ', rate_base,
           / 'Employee rate = ' , rate_employee.
  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.

  DATA: go_rate type ref to rate,
        go_rate2 type ref to rate.


  CALL METHOD rate=>set_rate_base EXPORTING i_rate = 20. " rate=>set_rate_base( i_rate = 20 ).

  create object go_rate.
  create object go_rate2.


  go_rate->set_rate_employee( i_rate = 30 ).
  go_rate2->set_rate_employee( i_rate = 40 ).
  go_rate->see_rate( ).

  skip 2.
  go_rate2->see_rate( ).