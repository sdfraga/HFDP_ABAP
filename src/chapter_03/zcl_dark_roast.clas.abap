CLASS zcl_dark_roast DEFINITION
  PUBLIC
  INHERITING FROM zcl_beverage
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor,
      cost REDEFINITION.
ENDCLASS.

CLASS zcl_dark_roast IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
    me->description = 'Dark Roast Coffee'.
  ENDMETHOD.

  METHOD cost.
    return = '.99'.
  ENDMETHOD.

ENDCLASS.
