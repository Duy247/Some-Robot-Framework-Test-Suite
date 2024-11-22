*** Settings ***            
Library    SeleniumLibrary
Variables    ../../locator/frame/frame_loc.py

*** Keywords ***
Select iFrame
    Element Should Be Visible    ${frame}
    Select Frame    ${frame}

Verify Content iFrame
    Select iFrame
    Element Should Be Visible    ${content}
    ${CONTENT} =     Get Text    ${content}
    Log    ${CONTENT}
