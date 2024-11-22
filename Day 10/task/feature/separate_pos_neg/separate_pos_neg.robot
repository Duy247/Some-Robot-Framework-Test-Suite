*** Settings ***                        
Library    SeleniumLibrary
Library    Collections
Library    ../../python/separate_pos_neg/separate_pos_neg.py

*** Keywords ***
Separate Positive And Negative Numbers Imported From Python
    [Arguments]    @{nums}
    [Documentation]    Separate positive and negative numbers from a list of numbers.
    ...    Imported from Python
    ${pos_nums}    ${neg_nums}=    Separate Positive Negative    ${nums}
    Log    Positive Numbers: ${pos_nums}
    Log    Negative Numbers: ${neg_nums}

Separate Positive And Negative Numbers Built In
    [Arguments]    @{nums}
    [Documentation]    Separate positive and negative numbers from a list of numbers.
    ...    Built In
    ${pos_nums}    Create List       
    ${neg_nums}    Create List    
    FOR    ${num}    IN    @{nums}
        IF    ${num} > 0    
            Append To List    ${pos_nums}    ${num}
        ELSE    
            Append To List    ${neg_nums}    ${num}
        END
    END
    Log    Positive Numbers: ${pos_nums}
    Log    Negative Numbers: ${neg_nums}