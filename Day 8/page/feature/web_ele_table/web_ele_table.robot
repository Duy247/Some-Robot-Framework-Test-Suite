*** Settings ***                        
Library    SeleniumLibrary
Variables    ../../locator/web_ele_table/web_ele_table_loc.py
Resource    ../common_nav/common_nav.robot

*** Keywords ***
Zoom Out
    [Documentation]    Bypass Ad blocking Click
    Execute Javascript    document.body.style.transform = "scale(0.9)";
Retrieve All Data
    @{rows} =     Get WebElements    ${table_row}
    FOR    ${row}    IN    @{rows}
        ${text_row} =     Get Text    ${row}
        Log    ${text_row} 
    END

Click Add Button
    Element Should Be Visible    ${add_btn}
    Scroll To Bottom
    Click Button    ${add_btn}

Input Employee Firstname
    [Arguments]    ${fn}
    Element Should Be Visible    ${employee_firstName}
    Input Text    ${employee_firstName}    ${fn}

Input Employee Lastname
    [Arguments]    ${ln}
    Element Should Be Visible    ${employee_lastName}
    Input Text    ${employee_lastName}    ${ln}

Input Employee Email
    [Arguments]    ${email}
    Element Should Be Visible    ${employee_email}
    Input Text    ${employee_email}    ${email}

Input Employee Age 
    [Arguments]    ${age}
    Element Should Be Visible    ${employee_age}
    Input Text    ${employee_age}    ${age}

Input Employee Salary
    [Arguments]    ${salary}
    Element Should Be Visible    ${employee_salary}
    Input Text    ${employee_salary}    ${salary}

Input Employee Department
    [Arguments]    ${dpm}
    Element Should Be Visible    ${employee_department}
    Input Text    ${employee_department}    ${dpm}

Click Submit Button
    [Documentation]    Button can't be clicked due to ad, use Enter
    Element Should Be Visible    ${submit_btn}
    Press Key    ${submit_btn}    \\13

Verify Employee Added
    [Arguments]    @{EMPLOYEE}
    FOR    ${element}    IN    @{EMPLOYEE}
        Page Should Contain    ${element}
    END

Verify Modal Not Close
    Element Should Be Visible    ${modal_header}