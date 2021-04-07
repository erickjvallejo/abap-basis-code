*&---------------------------------------------------------------------*
*& Report  Z_CONDICIONALES_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_condicionales_p1011657.

*DATA numero TYPE i.
*
*numero = 4.
*
*
*IF numero EQ 4. " eq o = "
*  WRITE 'Valor es igual a 4'.
*
*ENDIF.

PARAMETERS pa_cod TYPE i.

IF pa_cod EQ 12.
  WRITE 'Monitor dell'.

ELSEIF pa_cod EQ 13.
  WRITE 'Monito hp'.

ELSEIF pa_cod IS INITIAL.
  WRITE 'Ingrese un material'.

ELSEIF pa_cod IS NOT INITIAL.
  WRITE 'Codigo material desconocido'.

ENDIF.