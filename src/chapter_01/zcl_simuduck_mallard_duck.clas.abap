CLASS zcl_simuduck_mallard_duck DEFINITION
  PUBLIC INHERITING FROM zcl_simuduck_duck
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor,
      display REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_simuduck_mallard_duck IMPLEMENTATION.

  METHOD display.
    WRITE: /, |I'm a real Mallard Duck|.
  ENDMETHOD.

  METHOD constructor.
    super->constructor( ).
    me->m_fly_behaviour = NEW zcl_simuduck_fly_with_wings( ).
    me->m_quack_behaviour = NEW zcl_simuduck_quack( ).
  ENDMETHOD.

ENDCLASS.
