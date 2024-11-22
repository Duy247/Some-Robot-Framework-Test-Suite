*** Settings ***
Library    SeleniumLibrary
Resource    ../page_rahulshetty/features/login/login.robot

Suite Setup    Run Keywords    Open Browser    ${URL}    chrome 
...    AND    Maximize Browser Window

Suite Teardown    Close Browser

*** Variables ***
${URL}    https://rahulshettyacademy.com/loginpagePractise/ 

*** Test Cases ***
[TC_01] Select username, password input, agreement checkbox and sign in button
    Select Username
    Select Password
    Select Agreement Checkbox
    Select SignIn