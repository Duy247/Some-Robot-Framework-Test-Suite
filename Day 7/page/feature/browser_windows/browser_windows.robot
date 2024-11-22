*** Settings ***                    
Library    SeleniumLibrary
Variables    ../../locator/browser_windows/browser_windows_loc.py
Resource    ../common_nav/common_nav.robot

*** Keywords ***
Click New Tab Button
    Element Should Be Visible    ${new_tab_button}
    Scroll To Bottom
    Click Button    ${new_tab_button}

Switch To New Tab Window
    Switch Window    NEW
    Element Should Be Visible    ${new_tab_content}
    
Click New Window Button
    Element Should Be Visible    ${new_window_button}
    Scroll To Bottom
    Click Button    ${new_window_button}
    
Switch To New Window
    Switch Window    NEW
    Element Should Be Visible    ${new_tab_content}
    
Retrieve Content New Tab Window
    ${CONTENT} =    Get Text    ${new_tab_content}
    Log    ${CONTENT}

Close Current Window 
    Close Window
    Switch Window  DEMOQA  

