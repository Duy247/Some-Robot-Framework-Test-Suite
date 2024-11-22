*** Settings ***
Library  SeleniumLibrary
Variables    ../../locator/login/login_loc.py

*** Keywords ***
Select Username
    Element Should Be Visible    ${username}

Select Password
    Element Should Be Visible    ${password}

Select Agreement Checkbox
    Element Should Be Visible    ${terms}

Select SignIn
    Element Should Be Visible    ${signin}

