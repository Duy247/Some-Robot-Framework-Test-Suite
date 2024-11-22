*** Settings ***                    
Library    SeleniumLibrary
Resource    ../common_nav/common_nav.robot
Variables    ../../locator/alert/alert_loc.py

*** Keywords ***
Click Button Click Me For Alert
    Element Should Be Visible    ${alert_btn}
    Scroll To Bottom
    Click Button    ${alert_btn}

Click OK On Alert
    Handle Alert    ACCEPT

Click Button Click Me For Confirm Alert
    Element Should Be Visible    ${confirm_box_btn}
    Scroll To Bottom
    Click Button    ${confirm_box_btn}

Click Cancel On Alert
    Handle Alert    DISMISS

Verify Cancel Alert Message
    Element Should Be Visible    ${cancel_alert_message}
    Page Should Contain    You selected Cancel

Click Button Click Me For Prompt Alert
    Element Should Be Visible    ${prompt_btn}
    Scroll To Bottom
    Click Button    ${prompt_btn}

Input Test Name Into Alert
    [Arguments]    ${name}
    Input Text Into Alert    ${name}

Verify Name Alert Message
    [Arguments]    ${name}
    Element Should Be Visible    ${prompt_alert_message}
    ${alert_message}=    Get Text    ${prompt_alert_message}
    Should Be Equal    ${alert_message}    You entered ${name}