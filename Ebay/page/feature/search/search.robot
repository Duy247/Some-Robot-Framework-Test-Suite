*** Settings ***                             
Library    SeleniumLibrary
Variables    ../../locator/search/search_loc.py

*** Keywords ***
Navigate to Ebay
    Go To    https://www.ebay.com/

Verify Page Grid
    Wait Until Element Is Visible    ${page_grid}

Verify Display Search Field
    Element Should Be Visible    ${search_field}

Verify Display Search Button
    Element Should Be Visible    ${search_btn}

Search Item
    [Arguments]    ${item}
    Input Text    ${search_field}    ${item}

Click Search Button
    Click Element    ${search_btn}

Verify Search Results
    Wait Until Element Is Visible    ${all_items}

Click Buy It Now Choice
    Click Element    ${buy_it_now}

Click Open Box Condition
    Click Element    ${condition_list}
    Click Element    ${openbox_condition}

Click First Item
    ${ITEMTEXT}=    Get Text    ${first_item_link}
    Click Element    ${first_item_link}
    RETURN    ${ITEMTEXT}

Switch To Item Tab
    @{original_window}=    Get Window Handles
    Switch Window    ${original_window}[1]

Go To Advanced Search
    Click Element    ${advanced_search}