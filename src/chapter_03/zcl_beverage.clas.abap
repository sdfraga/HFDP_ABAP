CLASS zcl_beverage DEFINITION ABSTRACT
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      get_description
        RETURNING
          VALUE(return) TYPE string,
      cost ABSTRACT
        RETURNING
          VALUE(return) TYPE f.
  PROTECTED SECTION.
    DATA: description TYPE string VALUE 'Unknown Beverage'.
ENDCLASS.

CLASS zcl_beverage IMPLEMENTATION.
  METHOD get_description.
    return = me->description.
  ENDMETHOD.
ENDCLASS.
