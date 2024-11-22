*** Settings ***                             
Library    SeleniumLibrary
Variables    ../../locator/checkout/checkout_loc.py

*** Keywords ***

Verify Review Order Page
    [Arguments]    ${item}
    Wait Until Page Contains    Review order    30s
    Page Should Contain    ${item}

Input Firstname
    [Arguments]    ${name}
    Input Text    ${first_name}    ${name}

Input Lastname
    [Arguments]    ${name}
    Input Text    ${last_name}    ${name}

Input Street Address
    [Arguments]    ${add}
    Input Text    ${address}    ${add}

Input City
    [Arguments]    ${ct}
    Input Text    ${city}    ${ct}

Input State
    [Arguments]    ${st}
    Input Text    ${state}    ${st}

Input Zip Code
    [Arguments]    ${code}
    Input Text    ${zip}    ${code}

Input Email
    [Arguments]    ${mail}
    Input Text    ${email}    ${mail}

Input Confirm Email
    [Arguments]    ${mail}
    Input Text    ${confirm_email}    ${mail}

Input Phone
    [Arguments]    ${num}
    Input Text    ${phone}    ${num}

Click Done
    Click Button    ${done_btn}

Verify Displaying Shipping Info
    [Arguments]    @{ship_info}
    FOR    ${info}    IN    @{ship_info}
        Wait Until Page Contains    ${info}
    END
    