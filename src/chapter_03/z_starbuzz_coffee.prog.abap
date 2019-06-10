*&---------------------------------------------------------------------*
*& Report z_starbuzz_coffee
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_starbuzz_coffee.

CLASS lcl_starbuzz_coffee DEFINITION CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS main.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_starbuzz_coffee IMPLEMENTATION.

  METHOD main.

    " Simple Expresso with no Condiments
    DATA(expresso) = CAST zcl_beverage( NEW zcl_expresso( ) ).
    WRITE: /, |{ expresso->get_description( ) } ${ expresso->cost( ) }|.

    " Double Mocha Soy Late with Whip
    DATA(doublemocha_soylate_whip) =
        NEW zcl_whip(
            NEW zcl_mocha(
                NEW zcl_mocha(
                    CAST zcl_beverage(
                        NEW zcl_dark_roast( ) ) ) ) ).

    WRITE: /, |{ doublemocha_soylate_whip->get_description( )
               } ${ doublemocha_soylate_whip->cost( ) }|.

    " HouseBlend with Soy, Mocha and Whip
    DATA(houseblend_soy_mocha_whip) =
        NEW zcl_whip(
            NEW zcl_mocha(
                NEW zcl_soy(
                    CAST zcl_beverage(
                        NEW zcl_house_blend( ) ) ) ) ).

    WRITE: /, |{ houseblend_soy_mocha_whip->get_description( )
               } ${ round( val = houseblend_soy_mocha_whip->cost( ) dec = 2 )
               }|.

  ENDMETHOD.

ENDCLASS.

START-OF-SELECTION.
  lcl_starbuzz_coffee=>main( ).
