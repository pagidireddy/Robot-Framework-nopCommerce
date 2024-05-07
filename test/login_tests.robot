*** Settings ***
Documentation    Test cases related to login functionality
Library    SeleniumLibrary
Resource    ../Resources/KeyWords.robot
Test Setup    Open The Site    ${url}
Test Teardown    Close Browser

*** Variables ***
${url}    https://admin-demo.nopcommerce.com/
${valid_email}    admin@yourstore.com
${valid_pass}    admin
${Invalid_email}    admi@youstore.com
${Invalid_pass}    admins

*** Test Cases ***
Successful Login
    [Tags]    positive    login
    Enter Email And Password    ${valid_email}    ${valid_pass}
    Click Login
    Wait Until Page Contains    Logout

Invalid Login
    [Tags]    negative    login
    Enter Email And Password    ${Invalid_email}    ${Invalid_pass}
    Click Login
    Wait Until Page Contains    Login was unsuccessful. Please correct the errors and try again.
