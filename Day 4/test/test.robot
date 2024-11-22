*** Settings ***
Library    SeleniumLibrary
Suite Setup    Run Keywords    Open Browser    ${URL}    chrome 
...    AND    Maximize Browser Window

Suite Teardown    Close Browser
Resource    ../page/feature/login/login.robot

*** Variables ***
${URL}    https://rahulshettyacademy.com/loginpagePractise/ 

*** Test Cases ***
[TC_Nav] Page Loads Successfully
    Verify Page
[TC_01] Login Page Elements Fully Displays
    Verify Display Username
    Verify Display Password
    Verify Display User Types
    Verify Display User Roles
    Verify Display Terms
    Verify Display Sign In Button

[TC_02] Username Input Correctly Displays
    Input Into Username    abcABC
    Verify Display Username Input    abcABC

[TC_03] Password Input Correctly Displays
    Input Into Password    xyzXYZ
    Verify Display Password Input   xyzXYZ

[TC_04] Modal Displays Upon Switching User Type
    Switch To User
    Verify Modal Display

[TC_05] Okay Button Closes Modal
    Verify Okay Buttons

[TC_06] Cancel Button Closes Modal
    Go To    ${URL}
    Switch To User
    Verify Cancel Buttons

[TC_07] Role Selection Correctly Displays
    Select Roles    Student
    Verify Role Display    Student 
    Select Roles    Teacher
    Verify Role Display    Teacher
    Select Roles    Consultant
    Verify Role Display    Consultant
    
[TC_08] Agreement Checkbox Correctly Displays Upon Tick
    Tick Agreements
    Check Tick

[TC_09] User Logins With Correct Info As Admin And Agreed Terms
    Go To    ${URL}
    Input Into Username    rahulshettyacademy
    Input Into Password    learning
    Select Roles    Student
    Tick Agreements
    Click Sign In
    Verify Logged In

[TC_10] User Can Not Login With Correct Info As Admin And Not Agreed Terms
    [Documentation]    Do not know what the behavior is if term is not checked
    ...    Expect not to log in. Should Fail but successfully log in 
    ...    Expect * means to expect any error
    Go To    ${URL}
    Input Into Username    rahulshettyacademy
    Input Into Password    learning
    Select Roles    Student
    Untick Agreements
    Click Sign In
    Run Keyword And Expect Error    *    Verify Logged In

[TC_11] User Can Not Login With Incorrect Username As Admin And Agreed Terms
    Go To    ${URL}
    Input Into Username    rahul
    Input Into Password    learning
    Select Roles    Student
    Tick Agreements
    Click Sign In
    Verify Wrong Login

[TC_12] User Can Not Login With Incorrect Password As Admin And Agreed Terms
    Go To    ${URL}
    Input Into Username    rahulshettyacademy
    Input Into Password    learn
    Select Roles    Student
    Tick Agreements
    Click Sign In
    Verify Wrong Login

[TC_13] User Can Not Login With Empty Username As Admin And Agreed Terms
    Go To    ${URL}
    Input Into Password    learn
    Select Roles    Student
    Tick Agreements
    Click Sign In
    Verify Empty Login

[TC_14] User Can Not Login With Empty Password As Admin And Agreed Terms
    Go To    ${URL}
    Input Into Username    rahulshettyacademy
    Select Roles    Student
    Tick Agreements
    Click Sign In
    Verify Empty Login