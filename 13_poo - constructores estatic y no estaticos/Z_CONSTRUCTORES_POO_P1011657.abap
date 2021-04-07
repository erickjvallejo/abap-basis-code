*&---------------------------------------------------------------------*
*& Report  Z_CONSTRUCTORES_POO_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_constructores_poo_p1011657.

CLASS employee DEFINITION.

  PUBLIC SECTION.
    METHODS constructor IMPORTING i_name TYPE string.        "Non Stactic constructor.
    CLASS-METHODS class_constructor.                         "Static Constructor, no parameters.



ENDCLASS.

CLASS employee IMPLEMENTATION.

  METHOD constructor.
    WRITE: / 'Constructor de Instancia', i_name.
  ENDMETHOD.

  METHOD class_constructor.
    WRITE: / 'Constructor Estatico de la Instancia'.
  ENDMETHOD.


ENDCLASS.

START-OF-SELECTION.

  DATA: go_employee_1 TYPE REF TO employee,
        go_employee_2 TYPE REF TO employee.


  CREATE OBJECT: go_employee_1 EXPORTING i_name = 'Hola',
                 go_employee_2 EXPORTING i_name = 'Mundo'.