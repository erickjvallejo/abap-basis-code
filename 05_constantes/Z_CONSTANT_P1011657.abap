*&---------------------------------------------------------------------*
*& Report  Z_CONSTANT_P1011657
*&
*&---------------------------------------------------------------------*
*&  This is reporte de constantes
*&
*&---------------------------------------------------------------------*

REPORT z_constant_p1011657.

DATA numero TYPE i.

numero = 4.

WRITE: 'The values of numero is = ', numero.

numero = 5.

WRITE: / 'The values of numero is = ', numero.

CONSTANTS: hora TYPE t VALUE '143050',
nombre type string value 'Lorena'.

WRITE:  / hora ENVIRONMENT TIME FORMAT,
        / nombre.

* ERROR: nombre = 'Alberto'