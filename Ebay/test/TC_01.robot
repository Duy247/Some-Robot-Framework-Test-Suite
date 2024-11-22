*** Settings ***                                        
Library    SeleniumLibrary
Resource    ../page/feature/search/search.robot
Resource    ../page/feature/item/item.robot
Resource    ../page/feature/cart/cart.robot
Resource    ../page/feature/checkout/checkout.robot

Suite Setup    Run Keywords    Open Browser    ${URL}    chrome    
...    AND    Maximize Browser Window 
...    AND    Set Selenium Speed    0.1
...    AND    Set Browser Implicit Wait    5s

Suite Teardown    Close Browser

*** Variables ***
${URL}    http://www.ebay.com
${ITEM}    IPhone
@{SHIPPING}    Duy    Van    06TT5C    Hanoi    Hadong    100000    duy5a247@gmail.com    0393718247

*** Test Cases ***
[TC_01] Basic Buying Flow
    [TC_01.01] Verify Ebay Page Display
    [TC_01.02] Search IPhone Product
    [TC_01.03] Select Buy It Now
    [TC_01.04] Select Open Box Condition
    [TC_01.05] Select First Item
    [TC_01.06] Select Add To Cart
    [TC_01.07] Select Go To Checkout
    [TC_01.08] As A Guest
    [TC_01.09] Input Correct Information In Ship To Section    @{SHIPPING}

*** Keywords ***
[TC_01.01] Verify Ebay Page Display
    Verify Page Grid
    Verify Display Search Field
    Verify Display Search Button

[TC_01.02] Search IPhone Product
    Search Item    ${ITEM}
    Click Search Button

[TC_01.03] Select Buy It Now
    Click Buy It Now Choice

[TC_01.04] Select Open Box Condition
    Click Open Box Condition
    Verify Search Results

[TC_01.05] Select First Item
    ${ITEMTEXT} =    Click First Item
    Set Global Variable    ${ITEMTEXT}
    Switch To Item Tab
    Verify Item Info    ${ITEMTEXT}
    
[TC_01.06] Select Add To Cart
    Click Add To Cart

[TC_01.07] Select Go To Checkout
    Click Go To Checkout

[TC_01.08] As A Guest
    Verify Sign In Choice
    Click Guest
    Verify Review Order Page    ${ITEMTEXT}

[TC_01.09] Input Correct Information In Ship To Section
    [Arguments]    @{ship_info}
    Input Firstname    ${ship_info}[0]
    Input Lastname    ${ship_info}[1]
    Input Street Address    ${ship_info}[2]
    Input City    ${ship_info}[3]
    Input State    ${ship_info}[4]
    Input Zip Code    ${ship_info}[5]
    Input Email    ${ship_info}[6]
    Input Confirm Email    ${ship_info}[6]
    Input Phone    ${ship_info}[7]
    Click Done
    Verify Displaying Shipping Info    @{ship_info}
