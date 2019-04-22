CLASS zcl_simuduck_squeak DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

PUBLIC SECTION.
    INTERFACES: zif_simuduck_quack_behaviour.
PROTECTED SECTION.
PRIVATE SECTION.
ENDCLASS.

CLASS zcl_simuduck_squeak IMPLEMENTATION.
  METHOD zif_simuduck_quack_behaviour~quack.
    WRITE: /, |Squeak|.
  ENDMETHOD.
ENDCLASS.
