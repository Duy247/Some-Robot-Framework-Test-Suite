*** Settings ***                                        
Library    SeleniumLibrary
Resource    ../task/feature/perfect_number/perfect_number.robot
Resource    ../task/feature/separate_pos_neg/separate_pos_neg.robot
Resource    ../task/feature/count_char/count_char.robot
Resource    ../task/feature/even_or_odd/even_or_odd.robot
Resource    ../task/feature/lower_to_upper/lower_to_upper.robot

*** Variables ***
@{PERF_NUMS}    ${6}    ${28}    ${496}    ${8128}
@{NON_PERF_NUMS}    ${5}    ${27}    ${495}    ${8127}
@{POS_NEG_NUMS}    ${-1}    ${2}    ${-3}    ${4}    ${-5}    ${6}
${STRING}    aaaaa1111@@@
${EVENS}    ${4}    
${ODDS}    ${5}    
${LOWER}    aaaaabc

*** Test Cases ***
[TC_01] Test Function Perfect Number Imported From Python
    [Documentation]    Imported from Python, Super Fast
    Check Is Perfect Number Imported From Python   @{PERF_NUMS}
    Check Is Perfect Number Imported From Python   @{NON_PERF_NUMS}
    
[TC_02] Test Function Perfect Number Built In
    [Documentation]    Buit In, Super Slow
    Check Is Perfect Number Built In    @{PERF_NUMS}
    Check Is Perfect Number Built In    @{NON_PERF_NUMS}

[TC_03] Test Function Separate Positive And Negative Numbers Imported From Python
    [Documentation]    Imported from Python, Super Fast
    Separate Positive And Negative Numbers Imported From Python    @{POS_NEG_NUMS}
    Separate Positive And Negative Numbers Imported From Python    @{POS_NEG_NUMS}

[TC_04] Test Function Separate Positive And Negative Numbers Built In
    [Documentation]    Built In, Not Too Slow
    Separate Positive And Negative Numbers Built In    @{POS_NEG_NUMS}
    Separate Positive And Negative Numbers Built In    @{POS_NEG_NUMS}

[TC_05] Test Function Count Character Imported From Python
    [Documentation]    Imported from Python, Super Fast
    Count Character Imported From Python    ${STRING}

[TC_06] Test Function Count Character Built In
    [Documentation]    Built In, Not Too Slow
    Count Character Built In    ${STRING}

[TC_07] Test Function Even Or Odd Imported From Python
    [Documentation]    Imported from Python, Super Fast
    Check Is Even Or Odd Imported From Python    ${EVENS}
    Check Is Even Or Odd Imported From Python    ${ODDS}

[TC_08] Test Function Even Or Odd Built In
    [Documentation]    Built In, Not Too Slow
    Check Is Even Or Odd Built In    ${EVENS}
    Check Is Even Or Odd Built In    ${ODDS}

[TC_09] Test Function Lower To Upper Imported From Python
    [Documentation]    Imported from Python, Super Fast
    ${upper} =    Convert Lower To Upper Imported From Python    ${LOWER}
    Log    ${upper}

[TC_10] Test Function Lower To Upper Built In
    [Documentation]    Built In, Not Too Slow
    ${upper} =    Convert Lower To Upper Built In    ${LOWER}
    Log    ${upper}