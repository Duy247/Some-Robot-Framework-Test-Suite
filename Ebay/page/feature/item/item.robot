*** Settings ***                             
Library    SeleniumLibrary
Variables    ../../locator/item/item_loc.py

*** Keywords ***

Verify Item Info
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    10s

Click Add To Cart  
    Element Should Be Visible    ${add_to_cart_btn}
    Click Element    ${add_to_cart_btn}
