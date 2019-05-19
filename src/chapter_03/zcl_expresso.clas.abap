CLASS zcl_expresso DEFINITION
  PUBLIC
  INHERITING FROM zcl_beverage
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor,
      cost REDEFINITION.
ENDCLASS.

CLASS zcl_expresso IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
    me->description = 'Expresso'.
  ENDMETHOD.

  METHOD cost.
    return = '1.99'.
  ENDMETHOD.

ENDCLASS.
