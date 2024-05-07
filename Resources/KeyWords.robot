*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Locators.robot
*** Keywords ***
Open The Site
    [Arguments]    ${url}
    Open Browser    ${url}    Chrome
    Maximize Browser Window

Open Login Page
    Click Element    ${Login_Button}

Enter Email and Password
    [Arguments]    ${Email_id}    ${Pass}
    Click Element    ${Email}
    Clear Element Text    ${Email}
    Input Text    ${Email}    ${Email_id}
    Click Element    ${Password}
    Clear Element Text    ${Password}
    Input Password        ${Password}    ${Pass}
    
Click Login
    Click Element        ${Login}
    
Verify Login
    Page Should Contain    Welcome to your store!

Search Products
    [Arguments]    ${Product}
    Click Element    ${Search_Box}
    Clear Element Text    ${Search_Box}
    Input Text    ${Search_Box}    ${Product}
    Click Element    ${Search_Button}

Verify Search
    TRY
        Wait Until Page Contains Element    ${Products}
    EXCEPT
        Wait Until Page Contains    No products were found that matched your criteria.
    END
Add Product to Cart
    Wait Until Page Contains Element    ${Add_to_cart_Button}
    Click Button    ${Add_to_cart_Button}
    Wait Until Page Contains Element    ${Bar_Close}
    Click Element    ${Bar_Close}
Open Cart
    Scroll Element Into View    ${Cart_Button}
    Wait Until Element Is Enabled    ${Cart_Button}
    Click Element    ${Cart_Button}

Browse Products
    Click Element    ${Books}
    Click Element    ${Products}

CheckOut Flow
    Page Should Contain Element    ${Checkout_Button}
    Select Checkbox    ${CheckBox}
    Checkbox Should Be Selected    ${CheckBox}
    Click Element    ${Checkout_Button}

Guest Details
    [Arguments]    ${First}    ${Last}    ${mail}    ${city}    ${Address}    ${Pin}    ${Phone_number}
    Click Element    ${Guest}
    Wait Until Page Contains    Ship to the same address    2seconds
    Wait Until Page Contains Element    ${Shipping}    5seconds
    Checkbox Should Be Selected    ${Shipping}
    Wait Until Element Is Visible    ${First_name}
    Click Element    ${First_name}
    Clear Element Text    ${First_name}
    Input Text    ${First_name}    ${First}

    Click Element    ${Last_name}
    Clear Element Text    ${Last_name}
    Input Text    ${Last_name}    ${Last}

    Click Element    ${Billing_Email}
    Clear Element Text    ${Billing_Email}
    Input Text    ${Billing_Email}    ${mail}

    Click Element    ${City_name}
    Clear Element Text    ${City_name}
    Input Text    ${City_name}    ${city}

    Select From List By Label       ${Country}    India
    
    Click Element    ${Billing_Address}
    Clear Element Text    ${Billing_Address}
    Input Text    ${Billing_Address}    ${Address}
    
    Click Element    ${Pincode}
    Clear Element Text    ${Pincode}
    Input Text    ${Pincode}    ${Pin}
    
    Click Element    ${Phone}
    Clear Element Text    ${Phone}
    Input Text    ${Phone}    ${Phone_number}
    
    Click Element    ${Continue}
    Wait Until Element Is Visible    ${Continue2}
    Wait Until Element Is Enabled    ${Continue2}
    Click Element    ${Continue2}
    Wait Until Element Is Visible    ${Continue3}
    Wait Until Element Is Enabled    ${Continue3}
    Click Element    ${Continue3}
    Wait Until Element Is Visible    ${Continue4}
    Wait Until Element Is Enabled    ${Continue4}
    Click Element    ${Continue4}
    Wait Until Element Is Visible    ${Continue4}
    Wait Until Element Is Enabled    ${Continue4}
    Wait Until Element Is Visible    ${Confirm}
    Wait Until Element Is Enabled    ${Confirm}
    Click Element    ${Confirm}

Verify Order
    Wait Until Page Contains    Your order has been successfully processed!