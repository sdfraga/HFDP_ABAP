CLASS zcl_simuduck_duck DEFINITION
  PUBLIC ABSTRACT
  CREATE PUBLIC .

PUBLIC SECTION.

    DATA:
        fly_behaviour TYPE REF TO zif_simuduck_fly_behaviour,
        quack_behaviour TYPE REF TO zif_simuduck_quack_behaviour.

    METHODS:
        display ABSTRACT,
        set_fly_behaviour
            IMPORTING
                i_fly_behaviour TYPE REF TO zif_simuduck_fly_behaviour,
        perform_fly,
        set_quack_behaviour
            IMPORTING
                i_quack_behaviour TYPE REF TO zif_simuduck_quack_behaviour,
        perform_quack,
        swim.

PROTECTED SECTION.
PRIVATE SECTION.

ENDCLASS.

CLASS zcl_simuduck_duck IMPLEMENTATION.

  METHOD set_fly_behaviour.
    me->fly_behaviour = i_fly_behaviour.
  ENDMETHOD.

  METHOD perform_fly.
    me->fly_behaviour->fly( ).
  ENDMETHOD.

  METHOD set_quack_behaviour.
    me->quack_behaviour = i_quack_behaviour.
  ENDMETHOD.

  METHOD perform_quack.
    me->quack_behaviour->quack( ).
  ENDMETHOD.

  METHOD swim.
    WRITE: /, |All ducks float, even decoys|.
  ENDMETHOD.


ENDCLASS.
