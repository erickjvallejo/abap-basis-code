*&---------------------------------------------------------------------*
*& Report  Z_DB_TABLE_WRITE_ZL70000
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT Z_DB_TABLE_WRITE_ZL70000.

INCLUDE: Z_DB_TABLE_WRITE_ZL70000_TOP,
         Z_DB_TABLE_WRITE_ZL70000_F01.


START-OF-SELECTION.

  PERFORM create_employee.
  PERFORM add_employee.