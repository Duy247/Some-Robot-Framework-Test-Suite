*** Settings ***                                        
Library    SeleniumLibrary
Resource    ../page/feature/search/search.robot
Resource    ../page/feature/advanced_search_item/advanced_search_item.robot

Suite Setup    Run Keywords    Open Browser    ${URL}    chrome    
...    AND    Maximize Browser Window 
...    AND    Set Selenium Speed   0
...    AND    Set Browser Implicit Wait    5s

Suite Teardown    Close Browser

*** Variables ***
${URL}    http://www.ebay.com
@{PRICERANGE}    0    100000000
@{ITEM}    IPhone Vietnam    XS    All Categories
${LOC}    United States
@{QUANT_RANGE}    0    5
${SELLER}    Apple
*** Test Cases ***
[TC_02] Advanced Search On Items
    [TC_02.01] Verify Ebay Page Display
    [TC_02.02] Select Advanced Search
    [TC_02.03] Fill All Items of Enter Keywords Or Item Number            
    [TC_02.04] Sequentially Select All Search Including
    [TC_02.05] Input Price Range    
    [TC_02.06] Sequentially Select All Buying Formats
    [TC_02.07] Sequentially Select All Condition
    [TC_02.08] Sequentially Select All Show Results
    [TC_02.09] Sequentially Select All Shipping Option
    [TC_02.10] Sequentially Select All Item Locations
    [TC_02.11] Sequentially Select All Seller Options With Seller
    [TC_02.12] Sequentially Select All Sort By
    [TC_02.13] Click Clear Options
    [TC_02.14] Repeat Input With Specified Options    
    [TC_02.15] Click Search

*** Keywords ***
[TC_02.01] Verify Ebay Page Display
    Verify Page Grid
    Verify Display Search Field
    Verify Display Search Button

[TC_02.02] Select Advanced Search
    Go To Advanced Search
    Verify Advanced Search Page

[TC_02.03] Fill All Items of Enter Keywords Or Item Number
    Input Item Name    ${ITEM}[0]
    Choose Keywords Option
    Input Exclude Words    ${ITEM}[1]
    Choose Category    ${ITEM}[2]

[TC_02.04] Sequentially Select All Search Including
    Choose Search Including Title And Description
    Choose Search Including Completed Items
    Choose Search Including Sold Items

[TC_02.05] Input Price Range
    Input Minimum Price    ${PRICERANGE}[0]    
    Input Maximum Price    ${PRICERANGE}[1]
    Verify Show Items With Price

[TC_02.06] Sequentially Select All Buying Formats
    Choose Buying Formats Accepts Offers
    Choose Buying Formats Auction
    Choose Buying Formats Buy It Now
    Choose Buying Formats Classified Ads

[TC_02.07] Sequentially Select All Condition
    Choose Condition New
    Choose Condition Used
    Choose Condition Not Specified

[TC_02.08] Sequentially Select All Show Results
    Choose Result Free Return
    Choose Result Returns Accepted
    Choose Result Authorized Seller
    Choose Result Deals And Savings
    Choose Result Sale Items
    Choose Result Listed As Lots
    Choose Result Benefits Charity
    Choose Result Authenticity Guarantee
    Choose Items Ending Type
    Choose Items Ending Time
    Verify Result Ending Time 
    Choose Result Bid
    ${random_min}    Evaluate    random.randint(0, sys.maxsize)    random
    Input Min Bid    ${random_min}
    ${random_max}    Evaluate    random.randint(0, sys.maxsize)    random
    Input Max Bid    ${random_max}
    Verify Result Bid
    Choose Result Quantity
    Input Minimum Quantity    0
    Input Maximum Quantity    999
    Verify Result Quantity

[TC_02.09] Sequentially Select All Shipping Option
    Choose Shipping Option Free Shipping
    Choose Shipping Option Local Pickup

[TC_02.10] Sequentially Select All Item Locations
    Choose Item Location Default
    Choose Item Location US Only
    Choose Item Location North America
    Choose Item Location WorldWide
    Choose Item Location Located In    ${LOC}
    Choose Item Location Available To    ${LOC}

[TC_02.11] Sequentially Select All Seller Options With Seller
    Choose Including Seller
    Choose Excluding Seller
    Input Seller ID    ${SELLER}
    Verify Only Show Items From
    
[TC_02.12] Sequentially Select All Sort By
    Choose Sort By
    Choose View Result
    Choose Result Per Page

[TC_02.13] Click Clear Options
    Clear Options
    Verify Empty Choices

[TC_02.14] Repeat Input With Specified Options  
    [TC_02.03] Fill All Items of Enter Keywords Or Item Number    
    Choose Specific Keywords Option By Label    Any words, any order
    # [TC_02.04] Select Search Including
    Choose Search Including Title And Description

    [TC_02.05] Input Price Range    
    # [TC_02.06] Select Buying Formats
    Choose Buying Formats Buy It Now

    # [TC_02.07] Select Condition
    Choose Condition Not Specified

    # [TC_02.08] Select Show Results
    Choose Result Quantity
    Input Minimum Quantity    ${QUANT_RANGE}[0]
    Input Maximum Quantity    ${QUANT_RANGE}[1]

    [TC_02.09] Sequentially Select All Shipping Option

    # [TC_02.10] Select Item Location    United States
    Choose Item Location Default

    # [TC_02.11] Select Seller   
    Choose Excluding Seller
    Input Seller ID    ${SELLER}

    #[TC_02.12] Select Sort By
    Choose Sort By Label    Best match
    Choose View Result By Label    List view
    Choose Result Per Page By Label    60

[TC_02.15] Click Search
    Advanced Search Item Not Empty
