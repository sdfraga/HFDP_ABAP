CLASS zcl_soy DEFINITION
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
    DATA:
      beverage TYPE REF TO zcl_beverage.
ENDCLASS.

CLASS zcl_soy IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
    me->beverage = beverage.
  ENDMETHOD.

  METHOD cost.
    return = '0.15' + me->beverage->cost( ).
  ENDMETHOD.

  METHOD get_description.
    return = |{ me->beverage->get_description( ) } , Soy|.
  ENDMETHOD.

ENDCLASS.
