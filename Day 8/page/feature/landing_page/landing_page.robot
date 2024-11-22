*** Settings ***                    
Library    SeleniumLibrary
Variables    ../../locator/landing_page/landing_page_loc.py
Resource    ../common_nav/common_nav.robot

*** Keywords ***
Navigate To Forms
    Scroll To Bottom
    Set Focus To Element    ${forms}
    Click Element    ${forms}

