*** Settings ***
Library    SeleniumLibrary
Resource    ../page/feature/common_nav/common_nav.robot
Resource    ../page/feature/landing_page/landing_page.robot
Resource    ../page/feature/browser_windows/browser_windows.robot
Resource    ../page/feature/alert/alert.robot
Resource    ../page/feature/frame/frame.robot

Suite Setup    Run Keywords    Open Browser    ${URL}    chrome 
...    AND    Maximize Browser Window
...    AND    Set Selenium Speed    0.1s
...    AND    Set Browser Implicit Wait    5s

Suite Teardown    Close All Browsers

*** Variables ***
${URL}    https://demoqa.com/
${NAME}    Duy

*** Test Cases ***
[TC] Alerts, Frame And Windows 
    [STEP_01] Click Alerts, Frame And Windows
    [STEP_02] Click Browsers In Alerts, Frame And Windows Section On Sidebar
    [STEP_03] Click New Tab Button To Open New Tab
    [STEP_04] Retrieve Content Of New Tab
    [STEP_05] Close Opened New Tab
    [STEP_06] Click New Tab Button To Open New Tab
    [STEP_07] Click Browsers In Alerts, Frame And Windows Section On Sidebar
    [STEP_08] Click First Click Me Button Then OK On Alert
    [STEP 09] Click Third Click Me Button Then Cancel On Alert

    [STEP_10] Click Fourth Click Me Button Enter Name OK on alert
    [STEP_11] Click Frames In Alerts, Frame & Windows Section On Sidebar
    [STEP_12] Retrieve Contents Displayed On Frame

*** Keywords ***

[STEP_01] Click Alerts, Frame And Windows
    Navigate To Alerts, Frame And Windows

[STEP_02] Click Browsers In Alerts, Frame And Windows Section On Sidebar
    Navigate To Browser Windows Section
[STEP_03] Click New Tab Button To Open New Tab
    Click New Tab Button
    Switch To New Tab Window
[STEP_04] Retrieve Content Of New Tab
    Retrieve Content New Tab Window
[STEP_05] Close Opened New Tab
    Close Current Window

[STEP_06] Click New Tab Button To Open New Tab
    Click New Window Button
    Switch To New Window
    Retrieve Content New Tab Window
    Close Current Window 

[STEP_07] Click Browsers In Alerts, Frame And Windows Section On Sidebar
    Navigate To Alerts Section

[STEP_08] Click First Click Me Button Then OK On Alert
    Click Button Click Me For Alert
    Click OK On Alert

[STEP_09] Click Third Click Me Button Then Cancel On Alert
    Click Button Click Me For Confirm Alert
    Click Cancel On Alert
    Verify Cancel Alert Message

[STEP_10] Click Fourth Click Me Button Enter Name OK on alert
    Click Button Click Me For Prompt Alert
    Input Test Name Into Alert    ${NAME}
    Verify Name Alert Message    ${NAME}

[STEP_11] Click Frames In Alerts, Frame & Windows Section On Sidebar
    Navigate To Frames

[STEP_12] Retrieve Contents Displayed On Frame
    Verify Content iFrame