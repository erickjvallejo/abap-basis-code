*&---------------------------------------------------------------------*
*&  Include           Z_DB_TABLE_WRITE_ZL70000_F01
*&---------------------------------------------------------------------*

FORM create_employee.

  wa_employees-id = '1234567899'.
  wa_employees-name = 'Vicente'.
  wa_employees-lastname = 'Fernandez'.
  wa_employees-birthday = '19000101'.


ENDFORM.

FORM add_employee.

  INSERT zl70000 FROM wa_employees.

  IF sy-subrc EQ 0.
    WRITE / 'Record added'.
  ELSE.
    WRITE / 'Record not inserted'.
  ENDIF.


ENDFORM.