*** Settings ***                                        
Library    SeleniumLibrary
Library    ../../python/perfect_number/perfect_number.py

*** Keywords ***
Check Is Perfect Number Imported From Python
    [Arguments]    @{nums}
    [Documentation]    Check a given number is a perfect number. 
    ...     A perfect number is a positive integer that is equal to sum of its positive divisors, excluding the number itself.
    ...    Imported from Python
    FOR    ${num}    IN    @{nums}
        ${result}    Is Perfect Number    ${num}
        IF    ${result} == True
            Log    ${num} is a perfect number
        ELSE
            Log    ${num} is not a perfect number
        END
    END
    

Check Is Perfect Number Built In
    [Arguments]    @{nums}
    [Documentation]    Check a given number is a perfect number. 
    ...     A perfect number is a positive integer that is equal to sum of its positive divisors, excluding the number itself.
    ...    Built in
    FOR    ${num}    IN    @{nums}
        ${sum}    Set Variable    0
        FOR    ${i}    IN RANGE    1    ${num}
            ${mod}    Evaluate    ${num}%${i}
            IF    ${mod} == 0    
                ${sum}    Evaluate    ${sum}+${i}
            END
        END
        IF    ${sum} == ${num}
            Log    ${num} is a perfect number
        ELSE
            Log    ${num} is not a perfect number
        END
    END
    