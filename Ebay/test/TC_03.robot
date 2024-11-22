*** Settings ***                                        
Library    SeleniumLibrary
Library    RequestsLibrary
Resource    ../page/feature/search/search.robot
Resource    ../page/feature/advanced_search_item/advanced_search_item.robot
Resource    ../page/feature/advanced_search_store/advanced_search_store.robot
Resource    ../page/feature/search_store/search_store.robot
Resource    ../page/feature/store_page/store_page.robot

Suite Setup    Run Keywords    Open Browser    ${URL}    chrome    options=add_argument("--incognito")    
...    AND    Set Selenium Speed   0.2s
...    AND    Maximize Browser Window 
...    AND    Set Browser Implicit Wait    30s

Suite Teardown    Close Browser

*** Variables ***
${URL}    http://www.ebay.com
${STORE}    ThienThanhAgarwoodVN
${LOC}    Thailand - THA

*** Test Cases ***
[TC_03] Advanced Search Store
    [TC_03.01] Verify Ebay Page Display
    [TC_03.02] Select Advanced Search
    [TC_03.03] Select Find Stores
    [TC_03.04] Enter Keyword To Search    
    [TC_03.05] Click Search Button    
    [TC_03.06] Select First Store
    [TC_03.07] Verify Store Page
    [TC_03.08] Change Location


*** Keywords ***
[TC_03.01] Verify Ebay Page Display
    Verify Page Grid
    Verify Display Search Field
    Verify Display Search Button

[TC_03.02] Select Advanced Search
    Go To Advanced Search
    Verify Advanced Search Page

[TC_03.03] Select Find Stores
    Navigate To Find Stores
    Verify Find Store Page
    
[TC_03.04] Enter Keyword To Search
    Input Store Name    ${STORE}
    Verify Input Store Name    ${STORE}

[TC_03.05] Click Search Button
    Click Search Store
    Verify Store Search Result Not Empty    ${STORE}

[TC_03.06] Select First Store
    ${STORETEXT} =    Click First Store Link
    Set Global Variable    ${STORETEXT}

[TC_03.07] Verify Store Page
    [Documentation]    May requires to solve Captcha manually, implicit 30s
    Verify Store Page Name   ${STORETEXT}

[TC_03.08] Change Location
    Click Category
    Change Ship To Location    ${LOC}
    Verify Item On Location