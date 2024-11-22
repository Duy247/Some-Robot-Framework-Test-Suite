*** Settings ***
Library    SeleniumLibrary
Variables    ../../locator/html_tut/html_tut_loc.py

*** Keywords ***
Collect Content Names
    Element Should Be Visible    ${content_names}

Click HTML Formatting
    Element Should Be Visible    ${html_formatting}
    Click Link    ${html_formatting}

Select Tutorials Name After Formatting
    Element Should Be Visible    ${content_after_html_formatting}

Click HTML CSS
    Element Should Be Visible    ${html_css}
    Click Link    ${html_css}

Select Tutorials Name After CSS
    Element Should Be Visible    ${content_after_html_css}

Select Parent Of Active Link
    Element Should Be Visible    ${parent_active}

Click IFrames
    Element Should Be Visible    ${html_iframe}
    Click Link    ${html_iframe}
    
Select Iframe W3SChool    
    Click Element    ${iframe_w3school}

Select Last Content
    Element Should Be Visible    ${last_content}
