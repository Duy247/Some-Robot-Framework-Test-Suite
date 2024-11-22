*** Settings ***                                    
Library    SeleniumLibrary
Library    ../../python/count_char/count_char.py
Library    String

*** Keywords ***
Count Character Imported From Python
    [Arguments]    ${string}
    [Documentation]    Count the number of occurrences of a character in a string.
    ...    Imported from Python
    ${count_letter}    ${count_digit}    ${count_special}    Count Character    ${string}
    Log    Number of Occurrences of letter: ${count_letter}
    Log    Number of Occurrences of digit: ${count_digit}
    Log    Number of Occurrences of special character: ${count_special}

Count Character Built In
    [Arguments]    ${string}
    [Documentation]    Count the number of occurrences of a character in a string.
    ...    Built In
    ${count_letter}    Set Variable    ${0}
    ${count_digit}    Set Variable    ${0}
    ${count_special}    Set Variable    ${0}
    @{strs} =    Split String To Characters    ${string}
    FOR    ${char}    IN    @{strs}
        IF    '${char}' >= 'A' and '${char}' <= 'Z' or '${char}' >= 'a' and '${char}' <= 'z'    
            ${count_letter} =    Evaluate    ${count_letter} + 1
        ELSE IF    '${char}' >= '0' and '${char}' <= '9'    
            ${count_digit} =     Evaluate    ${count_digit} + 1
        ELSE    
            ${count_special} =     Evaluate    ${count_special} + 1
        END
    END
    Log    Number of Occurrences of letter: ${count_letter}
    Log    Number of Occurrences of digit: ${count_digit}
    Log    Number of Occurrences of special character: ${count_special}
    


    