*** Settings ***                                                
Library    SeleniumLibrary
Library    String
Library    ../../python/lower_to_upper/lower_to_upper.py

*** Keywords ***
Convert Lower To Upper Imported From Python
    [Arguments]    ${string}
    ${result}    Lower To Upper    ${string}
    RETURN    ${result}

Convert Lower To Upper Built In
    [Arguments]    ${string}
    ${result}    Convert To Uppercase    ${string}
    RETURN    ${result}
