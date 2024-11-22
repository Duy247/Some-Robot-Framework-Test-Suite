*** Settings ***                                  
Library    SeleniumLibrary
Variables    ../../locator/advanced_search_store/advanced_search_store_loc.py

*** Keywords ***
Verify Find Store Page    
    Wait Until Element Is Visible    ${find_store_title}

Input Store Name
    [Arguments]    ${store}
    Element Should Be Visible    ${store_name}
    Input Text    ${store_name}    ${store}

Verify Input Store Name
    [Arguments]    ${expected}
    Textfield Should Contain    ${store_name}    ${expected}

Click Search Store
    Element Should Be Visible    ${search_store_btn}
    Click Button    ${search_store_btn}
