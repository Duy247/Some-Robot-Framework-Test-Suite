*** Settings ***                            
Library    SeleniumLibrary
Library    XML
Variables    ../../locator/form/form_loc.py
Resource    ../common_nav/common_nav.robot

*** Keywords ***
Input First Name
    [Arguments]    ${fn}
    Element Should Be Visible    ${first_name}
    Input Text    ${first_name}    ${fn}

Input Last Name
    [Arguments]    ${ln}
    Element Should Be Visible    ${last_name}
    Input Text    ${last_name}    ${ln}

Input Email
    [Arguments]    ${mail}
    Element Should Be Visible    ${email}
    Input Text    ${email}    ${mail}

Input Number
    [Arguments]    ${phone}
    Element Should Be Visible    ${number}
    Input Text    ${number}    ${phone}

Input Date Of Birth
    [Arguments]    ${day}    ${month}    ${year}
    Element Should Be Visible    ${DoB}
    Scroll To Bottom
    Click Element    ${DoB}
    Select From List By Label    ${DoB_month_select}    ${month}
    Select From List By Label    ${DoB_year_select}    ${year}
    Click Element    //div[contains(@class,'react-datepicker') and text() = '${day}']

Input Subject
    [Arguments]    ${sj}
    Element Should Be Visible    ${subject}
    Input Text    ${subject}    ${sj}
    Press Key    ${subject}    \\13

Input Address
    [Arguments]    ${add}
    Element Should Be Visible    ${address}
    Input Text    ${address}    ${add}

Choose Male Gender
    Element Should Be Visible    ${gender_male}
    Click Element    ${gender_male}

Verify Gender Male
    Radio Button Should Be Set To  ${gender_group_name}    Male

Choose Female Gender
    Element Should Be Visible    ${gender_female}
    Click Element    ${gender_female}

Verify Gender Female
    Radio Button Should Be Set To  ${gender_group_name}    Female

Choose Other Gender
    Element Should Be Visible    ${gender_other}
    Click Element    ${gender_other}

Verify Gender Other
    Radio Button Should Be Set To  ${gender_group_name}    Other

Select Hobby And Retrieve Hobby Name
    [Arguments]    @{selector}
    Element Should Be Visible    ${selector}[1]
    Click Element    ${selector}[1]
    Checkbox Should Be Selected    ${selector}[0]
    ${hobby_name} =    Get Text    ${selector}[1]
    Log    ${hobby_name}
    
Select All Hobbies and Retrieve All Names
    Select Hobby And Retrieve Hobby Name    @{first_hobby}
    Select Hobby And Retrieve Hobby Name    @{seccond_hobby}
    Select Hobby And Retrieve Hobby Name    @{third_hobby}