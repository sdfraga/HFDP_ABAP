CLASS zcl_simuduck_fly_rocket_power DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_simuduck_fly_behaviour.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_simuduck_fly_rocket_power IMPLEMENTATION.
  METHOD zif_simuduck_fly_behaviour~fly.
    WRITE: /, |I'm Flying with a rocket!|.
  ENDMETHOD.
ENDCLASS.
