*** Settings ***                    
Library    SeleniumLibrary
Library    XML
Variables    ../../locator/common_nav/comon_nav_loc.py
Resource    ../landing_page/landing_page.robot

*** Keywords ***
Navigate To Form Section
    Element Should Be Visible    ${form_link}
    Scroll To Bottom
    Click Element    ${form_link}

Click Practice Form
    Element Should Be Visible    ${forms}
    Click Element    ${forms}
    Scroll To Bottom

Click Elements
    Element Should Be Visible    ${elements}
    Click Element    ${elements}

Click Web Tables
    Element Should Be Visible    ${web_table}
    Click Element    ${web_table}

Scroll To Bottom
    [Documentation]    To handle the ad blocking the element
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight);