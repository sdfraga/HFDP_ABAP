CLASS zcl_whip DEFINITION
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
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA:
      beverage TYPE REF TO zcl_beverage.
ENDCLASS.



CLASS zcl_whip IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
    me->beverage = beverage.
  ENDMETHOD.

  METHOD cost.
    return = '0.10' + me->beverage->cost( ).
  ENDMETHOD.


  METHOD get_description.
    return = |{ me->beverage->get_description( ) } , Whip|.
  ENDMETHOD.

ENDCLASS.
