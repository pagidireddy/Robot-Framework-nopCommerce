*** Settings ***
Documentation    Test Cases related to products
Library    SeleniumLibrary
Resource    ../Resources/KeyWords.robot
Suite Setup    Open The Site    ${url}
Suite Teardown    Close Browser

*** Variables ***
${url}    https://demo.nopcommerce.com/
${Product}    Samsung
${First}    Alice
${Last}    David
${Bill_mail}    alice.david@example.com
${Bill_address}    1-10
${Bill_city}    Lone
${Bill_Pin}    5111105
${Bill_phone}    9876543210

*** Test Cases ***
Product Search
    [Tags]    Products
    Search Products    ${Product}
    Verify Search
    
Add Product to Cart
    [Tags]    Products
    Browse Products
    Add Product To Cart
    Open Cart
    
Checkout Process
    [Tags]    Products
    CheckOut Flow
    Guest Details    ${First}    ${Last}    ${Bill_mail}    ${Bill_address}    ${Bill_city}    ${Bill_Pin}    ${Bill_phone}
    Verify Order
