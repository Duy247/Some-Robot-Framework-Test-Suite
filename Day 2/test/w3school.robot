*** Settings ***
Library    SeleniumLibrary
Resource    ../page_w3school/features/tut_titles/tut_titles.robot    
Resource    ../page_w3school/features/html_tut/html_tut.robot   

Suite Setup    Run Keywords    Open Browser    ${URL}    chrome 
...    AND    Maximize Browser Window

Suite Teardown    Close All Browsers
*** Variables ***
${URL}    https://www.w3schools.com/html/default.asp

*** Test Cases ***
[TC] XPath
    [STEP_01] Select All Tutorials Titles Such As HTML,CSS,...
    [STEP_02] Collect All Links Of Tutorial With Title Starting With P
    [STEP_03] Collect All Content Names of HTML Tutorial
    [STEP_04] Click on HTML Formatting, select all tutorial names after HTML Formatting
    [STEP_05] Click on HTML CSS, select the all tutorial names after HTML CSS
    [STEP_06] Select parent element of active link in left sidebar
    [STEP_07] Click on HTML Iframes, select iframe with title containing text W3schools    
    [STEP_08] Select the last content name in HTML tutorial section
 

*** Keywords ***
[STEP_01] Select All Tutorials Titles Such As HTML,CSS,...
    Select All Tutorials Titles

[STEP_02] Collect All Links Of Tutorial With Title Starting With P
    Select All Tutorials Titles Starting with P
    
[STEP_03] Collect All Content Names of HTML Tutorial
    Collect Content Names

[STEP_04] Click on HTML Formatting, select all tutorial names after HTML Formatting
    Click HTML Formatting
    Select Tutorials Name After Formatting

[STEP_05] Click on HTML CSS, select the all tutorial names after HTML CSS
    Click HTML CSS
    Select Tutorials Name After CSS

[STEP_06] Select parent element of active link in left sidebar
    Select Parent Of Active Link

[STEP_07] Click on HTML Iframes, select iframe with title containing text W3schools
    Click IFrames
    Select Iframe W3SChool

[STEP_08] Select the last content name in HTML tutorial section
    Select Last Content