CLASS zcl_simuduck_model_duck DEFINITION
  PUBLIC INHERITING FROM zcl_simuduck_duck
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor,
      display REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_simuduck_model_duck IMPLEMENTATION.

  METHOD constructor.
    super->constructor( ).
    me->m_fly_behaviour = NEW zcl_simuduck_fly_no_way( ).
    me->m_quack_behaviour = NEW zcl_simuduck_quack( ).
  ENDMETHOD.

  METHOD display.
    WRITE: /, |I'm a Model Duck|.
  ENDMETHOD.

ENDCLASS.
