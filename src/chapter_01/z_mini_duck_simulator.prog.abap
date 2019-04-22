*&---------------------------------------------------------------------*
*& Report z_mini_duck_simulator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_mini_duck_simulator.

CLASS lcl_miniducksim DEFINITION CREATE PRIVATE.

  PUBLIC SECTION.
   CLASS-METHODS main.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_miniducksim IMPLEMENTATION.
  METHOD main.

    DATA(mallard) = NEW zcl_simuduck_mallard_duck( ).
    mallard->perform_quack( ).
    mallard->perform_fly( ).

    DATA(model) = NEW zcl_simuduck_model_duck( ).
    model->perform_fly( ).
    model->set_fly_behaviour( NEW zcl_simuduck_fly_rocket_power( ) ).
    model->perform_fly( ).

  ENDMETHOD.
ENDCLASS.

START-OF-SELECTION.
    lcl_miniducksim=>main( ).
