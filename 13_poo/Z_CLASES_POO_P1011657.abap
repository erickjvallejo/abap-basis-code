*&---------------------------------------------------------------------*
*& Report  Z_CLASES_POO_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_clases_poo_p1011657.

* The class must end with CL in its name.

CLASS student DEFINITION.

  PUBLIC SECTION.

    METHODS set_name IMPORTING i_name TYPE string. "Setter definition
    METHODS get_name EXPORTING e_name TYPE string. "Getter definition

  PROTECTED SECTION.
  "Protected method, not implemented yet.

  PRIVATE SECTION.
    DATA name TYPE string. "A Field

ENDCLASS.

CLASS student IMPLEMENTATION.

  METHOD set_name.   "Setter implementation.
    name = i_name.
  ENDMETHOD.

  METHOD get_name.   "Getter implementation.
    e_name = name.
  ENDMETHOD.

ENDCLASS.


START-OF-SELECTION.

  DATA: go_student TYPE REF TO student, "a object variable.
        gv_name TYPE string.            "a simple variable

  CREATE OBJECT go_student.             "Refering the object with var go_student

  CALL METHOD go_student->set_name      "Calling the setter and pass it a 'Miguelito'
    EXPORTING
      i_name = 'Miguelito'.

  CALL METHOD go_student->get_name      "Calling the getter and assigning to gv_name
    IMPORTING
      e_name = gv_name.

  WRITE gv_name.                        "Print var
