CLASS zcl_simuduck_mutequack DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_simuduck_quack_behaviour.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_simuduck_mutequack IMPLEMENTATION.
  METHOD zif_simuduck_quack_behaviour~quack.
    WRITE: /, |<< Silence >>|.
  ENDMETHOD.
ENDCLASS.
