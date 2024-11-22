*** Settings ***                             
Library    SeleniumLibrary
Variables    ../../locator/cart/cart_loc.py

*** Keywords ***
Click Go To Checkout
    Click Button    ${go_to_checkout_btn}

Verify Sign In Choice
    Wait Until Element Is Visible    ${guest_btn}

Click Guest 
    Click Button    ${guest_btn}
