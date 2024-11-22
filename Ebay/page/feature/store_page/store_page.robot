*** Settings ***                  
Library    SeleniumLibrary
Variables    ../../locator/store_page/store_page_loc.py

*** Keywords ***
Verify Store Page Name
    [Arguments]    ${expected}
    Element Should Be Visible    ${store_page_name}
    Element Should Contain    ${store_page_name}    ${expected}

Click Category
    Element Should Be Visible    ${categories}
    Click Element    ${categories}

Change Ship To Location
    [Arguments]    ${Loc}
    Select From List By Label    ${country_select}    ${Loc}

Verify Item On Location
    Wait Until Element Is Visible    ${item_grid}