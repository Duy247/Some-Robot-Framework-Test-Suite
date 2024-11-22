*** Settings ***                    
Library    SeleniumLibrary
Resource    ../page/feature/common_nav/common_nav.robot
Resource    ../page/feature/form/form.robot
Resource    ../page/feature/web_ele_table/web_ele_table.robot
Suite Setup    Run Keywords    Open Browser    ${URL}    chrome 
...    AND    Maximize Browser Window
...    AND    Set Selenium Speed    0.1s
...    AND    Set Selenium Implicit Wait    2s

Suite Teardown    Close Browser

*** Variables ***
${URL}    https://demoqa.com/
@{STUDENT}    Duy    Van    duy5a247@gmail.com    123-456 789    11    January    1900    Math    Hanoi
@{EMPLOYEE}    Duy    Van    duy5a247@gmail.com    23    7000000000    Financial    
@{EMPLOYEE_INV}    Dave

*** Test Cases ***
[TC] Working With Web Elements - Events
    [STEP_01] Click Forms
    [STEP_02] Click Practice Forms On Sidebar
    [STEP_03] Fill The Form With Student Information
    [STEP_04] Select Gender As Male And Verify
    [STEP_05] Select More Than One Hobbies And Retrieve
    [STEP_06] Click Elements On Sidebar
    [STEP_07] Click Web Tables In Elements Section
    [STEP_08] Retrieve All Employee Information Existing In Table
    [STEP_09] Able To Add A New Valid Employee
    [STEP_10] Unable To Add An Invalid Employee Missing Data

*** Keywords ***
[STEP_01] Click Forms
    Navigate To Form Section

[STEP_02] Click Practice Forms On Sidebar
    Click Practice Form

[STEP_03] Fill The Form With Student Information
    Input First Name    ${STUDENT}[0]
    Input Last Name    ${STUDENT}[1]
    Input Email    ${STUDENT}[2]
    Input Number    ${STUDENT}[3]
    Input Date Of Birth    ${STUDENT}[4]    ${STUDENT}[5]    ${STUDENT}[6]
    Input Subject    ${STUDENT}[7]
    Input Address    ${STUDENT}[8]

[STEP_04] Select Gender As Male And Verify
    Choose Male Gender
    Verify Gender Male

[STEP_05] Select More Than One Hobbies And Retrieve
    Select All Hobbies and Retrieve All Names

[STEP_06] Click Elements On Sidebar
    Click Elements

[STEP_07] Click Web Tables In Elements Section
    Click Web Tables

[STEP_08] Retrieve All Employee Information Existing In Table
    Retrieve All Data

[STEP_09] Able To Add A New Valid Employee 
    Click Add Button
    Input Employee Firstname    ${EMPLOYEE}[0]
    Input Employee Lastname    ${EMPLOYEE}[1]
    Input Employee Email    ${EMPLOYEE}[2]
    Input Employee Age    ${EMPLOYEE}[3]
    Input Employee Salary    ${EMPLOYEE}[4]
    Input Employee Department    ${EMPLOYEE}[5]
    Click Submit Button 
    Verify Employee Added    @{EMPLOYEE}

[STEP_10] Unable To Add An Invalid Employee Missing Data
    Click Add Button
    Input Employee Firstname    ${EMPLOYEE_INV}[0]
    Click Submit Button 
    Verify Modal Not Close