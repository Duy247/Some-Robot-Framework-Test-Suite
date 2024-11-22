advanced_search_title = "//div[@class='small-section-title']"
keyword = "css=input#_nkw"
kw_opt = "//select[@name='_in_kw']"
kw_opt_val = [1,2,3,4]
ex_kw = "//input[@name='_ex_kw']"
category = "(//select[@name='_sacat'])[2]"

all_checkboxes = "//input[@type ='checkbox']"
all_select_sortby = "//fieldset[@class='adv-fieldset__miscSelects']/descendant::select"

search_including_TitleDesc = "//input[@name='LH_TitleDesc']/parent::*"
search_including_TitleDesc_checkbox = "//input[@name='LH_TitleDesc']"
search_including_Completed = "//input[@name='LH_Complete']/parent::*"
search_including_Completed_checkbox = "//input[@name='LH_Complete']"
search_including_Sold = "//input[@name='LH_Sold']/parent::*"
search_including_Sold_checkbox = "//input[@name='LH_Sold']"

min_price = "//input[@name = '_udlo']"
max_price = "//input[@name = '_udhi']"
show_item_price = "//label[contains(text(),'Show items')]/preceding-sibling::span/input"

buying_formats_Accept_offer = "//input[@value='LH_BO']/parent::*"
buying_formats_Auction = "//input[@value='LH_Auction']/parent::*"
buying_formats_Buy_Now = "//input[@value='LH_BIN']/parent::*"
buying_formats_CAds = "//input[@value ='LH_CAds']/parent::*"
buying_formats_groupname = "s0-1-17-6[3]"

condition_New = "//label[text()='New']/preceding-sibling::*"
condition_Used = "//label[text()='Used']/preceding-sibling::*"
condition_NS = "//label[text()='Not specified']/preceding-sibling::*"
condition_groupname = "s0-1-17-6[4]"

result_FR = "//input[@name='LH_FR']/parent::*"
result_FR_checkbox = "//input[@name='LH_FR']"
result_RPA = "//input[@name='LH_RPA']/parent::*"
result_RPA_checkbox = "//input[@name='LH_RPA']"
result_AS = "//input[@name='LH_AS']/parent::*"
result_AS_checkbox = "//input[@name='LH_AS']"
result_Saving  = "//input[@name='LH_Savings']/parent::*"
result_Saving_checkbox  = "//input[@name='LH_Savings']"
result_Sale = "//input[@name='LH_SaleItems']/parent::*"
result_Sale_checkbox= "//input[@name='LH_SaleItems']"
result_Lots = "//input[@name = 'LH_Lots']/parent::*"
result_Lots_checkbox = "//input[@name = 'LH_Lots']"
result_Charity = "//input[@name='LH_Charity']/parent::*"
result_Charity_checkbox = "//input[@name='LH_Charity']"
result_Auth = "//input[@name='LH_AV']/parent::*"
result_Auth_checkbox = "//input[@name='LH_AV']"

result_Time = "//input[@name='LH_Time']/parent::*"
result_Time_checkbox = "//input[@name='LH_Time']"
endingType = "//select[@name='_ftrt']"
endingType_val = [901,902,903]
endingTime = "//select[@name='_ftrv']"
endingTime_val = [1,2,3,4,5,12,24,48,72,96,120,144,148]

min_bid = "//input[@name='_sabdlo']"
max_bid = "//input[@name='_sabdhi']"
bid = "//input[@name='LH_NOB']/parent::*"
bid_checkbox = "//input[@name='LH_NOB']"

min_quan = "//input[@name='_samilow']"
max_quan = "//input[@name='_samihi']"
quantity = "//input[@name ='LH_MIL']/parent::*"
quantity_checkbox = "//input[@name ='LH_MIL']"

ship_FS = "//input[@name='LH_FS']/parent::*"
ship_LPickup = "//input[@name='LH_LPickup']/parent::*"
ship_FS_checkbox = "//input[@name='LH_FS']"
ship_LPickup_checkbox = "//input[@name='LH_LPickup']"

item_loc_def = "//label[text()='Default']/preceding-sibling::*"
item_loc_us = "//label[text()='US Only']/preceding-sibling::*"
item_loc_na = "//label[text()='North America']/preceding-sibling::*"
item_loc_ww = "//label[text()='Worldwide']/preceding-sibling::*"

item_loc_in = "//input[@value='LH_LocatedIn']/parent::*"
item_loc_in_select = "//select[@name='_salic']"
item_loc_avail = "//input[@value='LH_AvailTo']/parent::*"
item_loc_avail_select = "//select[@name='_saact']"
item_loc_groupname = "s0-1-17-6[7]"

seller_in_ex = "//select[@name='_saslop']"
sellers = "//input[@name='_sasl']"
only_show_item = "//input[@name='_fss']"
spec_seller = "//label[contains(text(),'Specific sellers')]/preceding-sibling::*"

sort_by = "//select[@name='_sop']"
sort_by_val = [-1,1,10,15,16,7,12]
view_result = "//select[@name='_dmd']"
view_result_val = [-1,1,2]
res_per_page = "//select[@name='_ipg']"
res_per_page_val = [-1,60,120,240]

clear_opt = "//a[text()='Clear options']"
search_btn_wrap = "css=button[type='submit']"
search_result = "//li[contains(@id,'item')]"

find_store = "//span[text()='Find stores']/parent::a"