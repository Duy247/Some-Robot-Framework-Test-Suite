*** Settings ***                   
Library    SeleniumLibrary
Variables    ../../locator/dashboard/dashboard_loc.py

*** Keywords ***
Verify Display Nav Bar
    Wait Until Element Is Visible    ${nav_bar_brand_up}
    Element Should Be Visible    ${nav_link_home}
    Element Should Be Visible    ${nav_link_shop}

Verify Display Down Bar
    Element Should Be Visible    ${nav_bar_brand_down}

Verify Display Checkout
    Element Should Be Visible    ${check_out}

Verify Display Shop Name
    Element Should Be Visible    ${shop_name}

Verify Display Category
    Element Should Be Visible    ${list_group_items}[0]
    Element Should Be Visible    ${list_group_items}[1]
    Element Should Be Visible    ${list_group_items}[2]

Verify Display Carousel
    Element Should Be Visible    ${carousel}

Verify Display IPhone
    Element Should Be Visible    ${iphone_x_label}
    Element Should Be Visible    ${iphone_x_add}

Verify Display Note 8
    Element Should Be Visible    ${note_8_label}
    Element Should Be Visible    ${note_8_add}

Verify Display Nokia
    Element Should Be Visible    ${nokia_edge_label}
    Element Should Be Visible    ${nokia_edge_add}

Verify Display Blackberry
    Element Should Be Visible    ${blackberry_label}
    Element Should Be Visible    ${blackberry_add}

