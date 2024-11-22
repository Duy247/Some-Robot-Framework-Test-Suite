*** Settings ***                               
Library    SeleniumLibrary
Resource    ../dashboard/dashboard.robot
Variables    ../../locator/login/login_loc.py

*** Keywords ***
Verify Page
    Page Should Contain    ${load_text}
Verify Display Username
    Element Should Be Visible    ${username}

Verify Display Password
    Element Should Be Visible    ${password}

Verify Display User Types
    Element Should Be Visible    ${admin_usertype}
    Element Should Be Visible    ${user_usertype}

Verify Display User Roles
    Element Should Be Visible    ${role_select}
    Click Element    ${role_select}
    FOR    ${role}    IN    @{role_value.keys()}
        Page Should Contain    ${role}
    END

Verify Display Terms
    Element Should Be Visible    ${terms}

Verify Display Sign In Button
    Element Should Be Visible    ${sign_in}

Input Into Username
    [Arguments]    ${input}
    Input Text    ${username}    ${input}

Verify Display Username Input
    [Arguments]    ${expected}
    Textfield Value Should Be    ${username}    ${expected}

Input Into Password
    [Arguments]    ${input}
    Input Password    ${password}    ${input}

Verify Display Password Input
    [Arguments]    ${expected}
    Textfield Should Contain    ${password}    ${expected}


Switch To User
    Click Element    ${user_usertype}

Switch To Admin
    Click Element    ${admin_usertype}

Verify Modal Display
    Wait Until Element Is Visible    ${modal_body}
    Page Should Contain    You will be limited
    
Verify Okay Buttons
    Wait Until Element Is Visible    ${okay_btn}
    Click Element    ${okay_btn}
    Wait Until Element Is Not Visible    ${modal_body}
    
Verify Cancel Buttons
    Wait Until Element Is Visible    ${cancel_btn}
    Sleep    1s
    Click Element    ${cancel_btn}
    Wait Until Element Is Not Visible    ${modal_body}

Select Roles
    [Arguments]    ${choice}
    Select From List By Label    ${role_select}    ${choice}
    
Verify Role Display
    [Arguments]    ${choice}
    Page Should Contain    ${choice}

Tick Agreements
    Select Checkbox    ${terms}

Untick Agreements
    Unselect Checkbox    ${terms}

Check Tick
    Checkbox Should Be Selected    ${terms}

Click Sign In
    Click Element    ${sign_in}

Verify Wrong Login
    Wait Until Element Is Visible    ${warning_pop}
    Element Should Be Visible    ${warning_text_incorrect}

Verify Empty Login
    Wait Until Element Is Visible    ${warning_pop}
    Element Should Be Visible    ${warning_text_empty}

Verify Logged In
    Verify Display Nav Bar
    Verify Display Down Bar
    Verify Display Checkout
    Verify Display Shop Name
    Verify Display Shop Name
    Verify Display Category
    Verify Display Carousel
    Verify Display IPhone
    Verify Display Note 8
    Verify Display Nokia
    Verify Display Blackberry
