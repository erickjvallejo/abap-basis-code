*&---------------------------------------------------------------------*
*& Report  Z_DB_TABLE_READ_ZL70000
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_db_table_read_zl70000.

INCLUDE z_db_table_read_zl70000_top.

INCLUDE z_db_table_read_zl70000_f01.

START-OF-SELECTION.

  PERFORM get_employee.