*** Settings ***                   
Library    SeleniumLibrary
Variables    ../../locator/search_store/search_store_loc.py

*** Keywords ***
Verify Store Search Result Not Empty
    [Arguments]    ${kw}
    Textfield Should Contain    ${store_search_field}    ${kw}
    Element Should Be Visible    ${all_results}

Click First Store Link
    Element Should Be Visible    ${first_store_link}
    ${store_link_text}=    Get Text    ${first_store_link}
    Click Element    ${first_store_link}
    RETURN    ${store_link_text}    