*** Settings ***                    
Library    SeleniumLibrary
Library    ../../python/even_or_odd/even_or_odd.py

*** Keywords ***        
Check Is Even Or Odd Imported From Python
    [Arguments]    ${number}
    ${result}=    Even Or Odd    ${number}
    Log    ${result}

Check Is Even Or Odd Built In
    [Arguments]    ${number}
    IF    ${number} % 2 == 0    
        Log    Even    
    ELSE    
        Log    Odd
    END