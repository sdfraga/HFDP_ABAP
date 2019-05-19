CLASS zcl_decaf DEFINITION
  PUBLIC
  INHERITING FROM zcl_beverage
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor,
      cost REDEFINITION.
ENDCLASS.

CLASS zcl_decaf IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
    me->description = 'Decaf'.
  ENDMETHOD.

  METHOD cost.
    return = '1.05'.
  ENDMETHOD.

ENDCLASS.
