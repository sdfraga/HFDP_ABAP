CLASS zcl_simuduck_quack DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

PUBLIC SECTION.
    INTERFACES: zif_simuduck_quack_behaviour.
PROTECTED SECTION.
PRIVATE SECTION.
ENDCLASS.

CLASS zcl_simuduck_quack IMPLEMENTATION.
  METHOD zif_simuduck_quack_behaviour~quack.
    WRITE: /, |Quack|.
  ENDMETHOD.
ENDCLASS.
