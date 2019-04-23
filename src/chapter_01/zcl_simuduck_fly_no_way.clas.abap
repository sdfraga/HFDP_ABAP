CLASS zcl_simuduck_fly_no_way DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_simuduck_fly_behaviour.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_simuduck_fly_no_way IMPLEMENTATION.
  METHOD zif_simuduck_fly_behaviour~fly.
    WRITE: /, |I can't Fly!!|.
  ENDMETHOD.
ENDCLASS.
