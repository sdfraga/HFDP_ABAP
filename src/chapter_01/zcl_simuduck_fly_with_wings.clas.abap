CLASS zcl_simuduck_fly_with_wings DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_simuduck_fly_behaviour.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_simuduck_fly_with_wings IMPLEMENTATION.
  METHOD zif_simuduck_fly_behaviour~fly.
    WRITE: /, |I'm Flying!!|.
  ENDMETHOD.
ENDCLASS.
