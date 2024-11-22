*** Settings ***                    
Library    SeleniumLibrary
Variables    ../../locator/common_nav/comon_nav_loc.py
Resource    ../landing_page/landing_page.robot

*** Keywords ***
Navigate To Browser Windows Section
    Element Should Be Visible    ${broswer_window_link}
    Scroll To Bottom
    Click Element    ${broswer_window_link}

Navigate To Alerts Section
    Element Should Be Visible    ${alert_link}
    Scroll To Bottom
    Click Element    ${alert_link}

Navigate To Frames
    Element Should Be Visible    ${frame_link}
    Scroll To Bottom
    Click Element    ${frame_link}

Scroll To Bottom
    [Documentation]    To handle the ad blocking the element
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight);