*&---------------------------------------------------------------------*
*& Report  Z_VARIABLES_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_variables_p1011657.

* This is the way to define a vars in ABAP

DATA date TYPE d. "This is a date var"

date = '20200703'.

WRITE date DD/MM/YYYY.