*&---------------------------------------------------------------------*
*& Report  Z_ATRIBUTOS_POO_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*


* TODO: REVIEW A ERROR
REPORT z_atributos_poo_p1011657.

CLASS invoice DEFINITION.

  PUBLIC SECTION.
    DATA vendor TYPE string. "Object var (Non static)
    CLASS-DATA payment_date TYPE d. "Class var (static)

ENDCLASS.

START-OF-SELECTION.

  DATA: go_invoice_1 TYPE REF TO invoice, go_invoice_2 TYPE REF TO invoice.

  CREATE OBJECT: go_invoice_1, go_invoice_2.

  go_invoice_1->vendor = 'Google'.
  go_invoice_2->vendor = 'Facebook'.

  invoice=>payment_date = '20200705'.

  WRITE: / go_invoice_1->vendor,
           go_invoice_1->payment_date DD/MM/YYYY.

  SKIP 2.

  WRITE: / go_invoice_2->vendor,
           go_invoice_1->payment_date  DD/MM/YYYY.