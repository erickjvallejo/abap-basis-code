*&---------------------------------------------------------------------*
*& Report  Z_EXPRESIONES_P1011657
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT z_expresiones_p1011657.

DATA: number_a TYPE i
      , number_b TYPE i
      , number_c TYPE i.

number_b = 4. "Value assignment"
number_c = 6.

* Sum two numbers
number_a = number_b + number_c.

WRITE: / 'A = ', number_a.

* Another sum way
add 2 to number_a.
WRITE: / 'A = ', number_a.

* Subtract
CLEAR:  number_a,
        number_b,
        number_c.

number_b = 10.
number_c = 5.
number_a = number_b - number_c.
WRITE: / 'A = ', number_a.

* Another subtract way
SUBTRACT 2 FROM number_a.
WRITE: / 'A = ', number_a.



* Multiply
number_a = number_b * number_c.
WRITE: / 'A = ', number_a.

* Another multiply way
MULTIPLY number_a by 2.
WRITE: / 'A = ', number_a.

* Divide
number_b = 8.
number_c = 2.
number_a = number_b / number_c.
WRITE: / 'A = ', number_a.


number_a = 2 * ( number_b + number_c ). "Space for pharantesis required"
WRITE: / 'A = ', number_a.
