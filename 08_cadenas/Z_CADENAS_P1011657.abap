*&---------------------------------------------------------------------*
*& Report  Z_CADENAS_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_cadenas_p1011657.

DATA: sociedad TYPE c LENGTH 8,
      tipo     TYPE c LENGTH 4,
      nombre_soc  TYPE string,
      longitud TYPE i.

sociedad = 'Vallejo'.
tipo = 'SAS'.

CONCATENATE sociedad ' ' tipo INTO nombre_soc RESPECTING BLANKS. "Tambien puedo usar space"

WRITE / nombre_soc.

longitud = strlen( nombre_soc ).
WRITE: / 'Longitud de la cadena = ',longitud.

TRANSLATE nombre_soc TO UPPER CASE.
WRITE / nombre_soc.

TRANSLATE nombre_soc TO LOWER CASE.
WRITE / nombre_soc.