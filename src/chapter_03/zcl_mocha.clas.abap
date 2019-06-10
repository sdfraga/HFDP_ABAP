CLASS zcl_mocha DEFINITION
  PUBLIC
  INHERITING FROM zcl_condiment_decorator
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      constructor
        IMPORTING
          beverage TYPE REF TO zcl_beverage,
      cost REDEFINITION,
      get_description REDEFINITION.
  PRIVATE SECTION.
    data:
      beverage TYPE REF TO zcl_beverage.
ENDCLASS.

CLASS zcl_mocha IMPLEMENTATION.

  METHOD constructor.
   super->constructor( ).
    me->beverage = beverage.
  ENDMETHOD.

  METHOD cost.
    return = '0.20' + me->beverage->cost( ).
  ENDMETHOD.

  METHOD get_description.
    return = |{ me->beverage->get_description( ) } , Mocha|.
  ENDMETHOD.

ENDCLASS.
