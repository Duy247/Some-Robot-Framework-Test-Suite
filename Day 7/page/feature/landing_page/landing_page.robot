*** Settings ***                    
Library    SeleniumLibrary
Variables    ../../locator/landing_page/landing_page_loc.py
Resource    ../common_nav/common_nav.robot

*** Keywords ***
Navigate To Alerts, Frame And Windows
    Scroll To Bottom
    Set Focus To Element    ${alert_frame_window}
    Click Element    ${alert_frame_window}

