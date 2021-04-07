*&---------------------------------------------------------------------*
*&  Include           Z_DB_TABLE_READ_ZL70000_F01
*&---------------------------------------------------------------------*

FORM get_employee.

  SELECT SINGLE name FROM zl70000
        INTO gv_name
        WHERE id ='1234567890'.

  IF sy-subrc EQ 0. " 4 not find
    WRITE / gv_name.
    SKIP 2.
  ENDIF.

  SELECT SINGLE *
        FROM zl70000
        INTO gs_employee
        WHERE id ='1234567890'.


  IF sy-subrc EQ 0.
    WRITE: / gs_employee-id,
    / gs_employee-name,
    / gs_employee-lastname,
    / gs_employee-birthday.
  ENDIF.

ENDFORM.