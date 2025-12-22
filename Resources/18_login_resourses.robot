*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://admin-demo.nopcommerce.com/login?returnurl=%2Fadmin%2F
${browser}=    chrome


*** Keywords ***
open my browser
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Enter username
    [Arguments]    @{username1}
    Input Text    xpath://input[@id='Email']    @{username1}

Enter Password
    [Arguments]    @{password1}
    Input Text    xpath://input[@id='Password']    @{password1}

click login
    Click Element    xpath://button[normalize-space()='Log in']

Error Message should be visible
    Page Should Contain    Login was unsuccessful. 

Dashboard should be visible
    Page Should Contain    Dashboard
    