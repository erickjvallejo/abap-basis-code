*&---------------------------------------------------------------------*
*& Report  Z_VARIABLES_INC_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_variables_inc_p1011657.

* adding (:) in DATA can add more parameter separed by (,)
DATA: cadena TYPE c LENGTH 4, numero TYPE p LENGTH 10 DECIMALS 2.

cadena = 'ABCD'.

* adding (:) in WRITE can add more parameter separed by (,)
WRITE: cadena,'Alumno ABAP'.

numero = '45.10'.

* Adding (/) print a new line
WRITE: / numero,
       / 'new line',
       / 'another new line'.