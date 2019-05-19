CLASS zcl_house_blend DEFINITION
  PUBLIC
  INHERITING FROM zcl_beverage
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor,
      cost REDEFINITION.
ENDCLASS.

CLASS zcl_house_blend IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
    me->description = 'House Blend Coffee'.
  ENDMETHOD.

  METHOD cost.
    return = '.89'.
  ENDMETHOD.

ENDCLASS.
