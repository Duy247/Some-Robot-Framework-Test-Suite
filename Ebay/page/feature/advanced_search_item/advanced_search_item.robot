*** Settings ***                                         
Library    SeleniumLibrary
Variables    ../../locator/advanced_search_item/advanced_search_item_loc.py

*** Keywords ***
Verify Advanced Search Page
    Wait Until Element Is Visible    ${advanced_search_title}
    Page Should Contain    Find items

Input Item Name
    [Arguments]    ${item}
    Input Text    ${keyword}    ${item}

Choose Keywords Option
    Element Should Be Visible    ${kw_opt}
    FOR    ${element}    IN    @{kw_opt_val}
        Select From List By Value    ${kw_opt}    ${element}      
    END
    Select From List By Value    ${kw_opt}    ${kw_opt_val}[0]

Choose Specific Keywords Option By Label
    [Arguments]    ${opt}
    Element Should Be Visible    ${kw_opt}
    Select From List By Label    ${kw_opt}    ${opt}

Input Exclude Words
    [Arguments]    ${k}
    Element Should Be Visible    ${ex_kw}
    Input Text    ${ex_kw}    ${k}

Choose Category
    [Arguments]    ${cate}
    Element Should Be Visible    ${category}
    Select From List By Label    ${category}    ${cate}

Choose Search Including Title And Description
    Element Should Be Visible    ${search_including_TitleDesc}
    Click Element    ${search_including_TitleDesc}

Choose Search Including Completed Items
    Element Should Be Visible    ${search_including_Completed}
    Click Element    ${search_including_Completed}

Choose Search Including Sold Items
    Element Should Be Visible    ${search_including_Sold}
    Click Element    ${search_including_Sold}

Input Minimum Price
    [Arguments]    ${min}
    Element Should Be Visible    ${min_price}
    Input Text    ${min_price}   ${min}

Input Maximum Price 
    [Arguments]    ${max}
    Element Should Be Visible    ${max_price}
    Input Text    ${max_price}    ${max}

Verify Show Items With Price
    Checkbox Should Be Selected    ${show_item_price}
    
Choose Buying Formats Accepts Offers 
    Element Should Be Visible    ${buying_formats_Accept_offer}
    Click Element    ${buying_formats_Accept_offer}
    
Choose Buying Formats Auction
    Element Should Be Visible    ${buying_formats_Auction}
    Click Element    ${buying_formats_Auction}

Choose Buying Formats Buy It Now
    Element Should Be Visible    ${buying_formats_Buy_Now}
    Click Element    ${buying_formats_Buy_Now}

Choose Buying Formats Classified Ads 
    Element Should Be Visible    ${buying_formats_CAds}
    Click Element    ${buying_formats_CAds}

Choose Condition New
    Element Should Be Visible    ${condition_New}
    Click Element    ${condition_New}

Choose Condition Used
    Element Should Be Visible    ${condition_Used}
    Click Element    ${condition_Used}

Choose Condition Not Specified
    Element Should Be Visible    ${condition_NS}
    Click Element    ${condition_NS}

Choose Result Free Return
    Element Should Be Visible    ${result_FR}
    Click Element    ${result_FR}

Choose Result Returns Accepted
    Element Should Be Visible    ${result_RPA}
    Click Element    ${result_RPA}

Choose Result Authorized Seller 
    Element Should Be Visible    ${result_AS}
    Click Element    ${result_AS}

Choose Result Deals And Savings
    Element Should Be Visible    ${result_Saving}
    Click Element    ${result_Saving}

Choose Result Sale Items
    Element Should Be Visible    ${result_Sale}
    Click Element    ${result_Sale}

Choose Result Listed As Lots
    Element Should Be Visible    ${result_Lots}
    Click Element    ${result_Lots}

Choose Result Benefits Charity
    Element Should Be Visible    ${result_Charity}
    Click Element    ${result_Charity}

Choose Result Authenticity Guarantee
    Element Should Be Visible    ${result_Auth}
    Click Element    ${result_Auth}

Choose Result Ending
    Element Should Be Visible    ${result_Time}
    Click Element    ${result_Time}

Choose Items Ending Type
    FOR    ${type}    IN    @{endingType_val}
        Select From List By Value    ${endingType}    ${type}
    END

Choose Specific Ending Type By Label
    [Arguments]    ${type}
    Element Should Be Visible    ${endingType}
    Select From List By Label    ${endingType}    ${type}

Choose Items Ending Time
    FOR    ${time}    IN    @{endingTime_val}
        Select From List By Value    ${endingTime}    ${time}
    END

Choose Specific Ending Time By Label
    [Arguments]    ${time}
    Element Should Be Visible    ${endingTime}
    Select From List By Label    ${endingTime}    ${time}

Verify Result Ending Time 
    Checkbox Should Be Selected    ${result_Time_checkbox}

Choose Result Bid
    Element Should Be Visible    ${bid}
    Click Element    ${bid}

Input Min Bid
    [Arguments]    ${amount}
    Element Should Be Visible    ${min_bid}
    Input Text    ${min_bid}    ${amount}

Input Max Bid
    [Arguments]    ${amount}
    Element Should Be Visible    ${max_bid}
    Input Text    ${max_bid}    ${amount}

Verify Result Bid
    Checkbox Should Be Selected    ${bid_checkbox}

Choose Result Quantity
    Element Should Be Visible    ${quantity}
    Click Element    ${quantity}

Input Minimum Quantity
    [Arguments]    ${amount}
    Element Should Be Visible    ${min_quan}
    Input Text    ${min_quan}    ${amount}

Input Maximum Quantity
    [Arguments]    ${amount}
    Element Should Be Visible    ${max_quan}
    Input Text    ${max_quan}    ${amount}

Verify Result Quantity
    Checkbox Should Be Selected    ${quantity_checkbox}

Choose Shipping Option Free Shipping
    Element Should Be Visible    ${ship_FS}
    Click Element    ${ship_FS}
    Checkbox Should Be Selected    ${ship_FS_checkbox}

Choose Shipping Option Local Pickup
    Element Should Be Visible    ${ship_LPickup}
    Click Element    ${ship_LPickup}
    Checkbox Should Be Selected    ${ship_LPickup_checkbox}

Choose Item Location Default
    Element Should Be Visible    ${item_loc_def}
    Click Element    ${item_loc_def}

Choose Item Location US Only
    Element Should Be Visible    ${item_loc_us}
    Click Element    ${item_loc_us}

Choose Item Location North America
    Element Should Be Visible    ${item_loc_na}
    Click Element    ${item_loc_na}

Choose Item Location WorldWide
    Element Should Be Visible    ${item_loc_ww}
    Click Element    ${item_loc_ww}

Choose Item Location Located In 
    [Arguments]    ${location}
    Element Should Be Visible    ${item_loc_in}
    Click Element    ${item_loc_in}
    Select From List By Label    ${item_loc_in_select}    ${location}

Choose Item Location Available To
    [Arguments]    ${location}
    Element Should Be Visible    ${item_loc_avail}
    Click Element    ${item_loc_avail}
    Select From List By Label    ${item_loc_avail_select}    ${location}

Choose Including Seller
    Select From List By Label    ${seller_in_ex}    Include

Choose Excluding Seller
    Select From List By Label    ${seller_in_ex}    Exclude 

Input Seller ID
    [Arguments]    ${id}
    Element Should Be Visible    ${sellers}
    Input Text    ${sellers}    ${id}

Verify Only Show Items From
    Checkbox Should Be Selected    ${only_show_item}

Choose Sort By
    Element Should Be Visible    ${sort_by}
    FOR    ${val}    IN    @{sort_by_val}
        Select From List By Value  ${sort_by}  ${val}
    END

Choose Sort By Label
    [Arguments]    ${val}
    Element Should Be Visible    ${sort_by}
    Select From List By Label    ${sort_by}    ${val}

Choose View Result
    Element Should Be Visible    ${view_result}
    FOR    ${val}    IN    @{view_result_val}
        Select From List By Value  ${view_result}  ${val}
    END

Choose View Result By Label
    [Arguments]    ${val}
    Element Should Be Visible    ${view_result}
    Select From List By Label    ${view_result}    ${val}

Choose Result Per Page
    Element Should Be Visible    ${res_per_page}
    FOR    ${val}    IN    @{res_per_page_val}
        Select From List By Value  ${res_per_page}  ${val}
    END

Choose Result Per Page By Label
    [Arguments]    ${val}
    Element Should Be Visible    ${res_per_page}
    Select From List By Label    ${res_per_page}    ${val}

Clear Options
    Click Element    ${clear_opt}

Verify Empty Choices
    Verify Advanced Search Page
    @{list_checkbox} =     Get WebElements    ${all_checkboxes}
    FOR    ${checkbox}    IN    @{list_checkbox}
        Checkbox Should Not Be Selected    ${checkbox}    
    END
    Textfield Value Should Be    ${min_price}    ${EMPTY}
    Textfield Value Should Be    ${max_price}    ${EMPTY}
    Radio Button Should Not Be Selected    ${buying_formats_groupname}
    Radio Button Should Not Be Selected    ${condition_groupname}
    Radio Button Should Not Be Selected    ${item_loc_groupname}
    List Selection Should Be    ${sort_by}    -1
    List Selection Should Be    ${view_result}    -1
    List Selection Should Be    ${res_per_page}    -1

Advanced Search Item Empty
    Click Element    ${search_btn_wrap}   
    Page Should Contain    No exact matches found

Advanced Search Item Not Empty
    Click Element    ${search_btn_wrap}   
    Element Should Be Visible    ${search_result}

Navigate To Find Stores
    Element Should Be Visible    ${find_store}
    Click Element    ${find_store}