*** Settings ***
Library    SeleniumLibrary
Variables    ../../locator/tut_titles/tut_titles_loc.py

*** Keywords ***
Select All Tutorials Titles 
    Element Should Be Visible    ${tut_titles}

Select All Tutorials Titles Starting with P 
    Element Should Be Visible     ${tut_titles_start_p}

