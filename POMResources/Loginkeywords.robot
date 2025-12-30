*** Settings ***
Library    SeleniumLibrary
Variables    ../POMPageobj/Locators.py

*** Keywords ***

click on login link

    Click link    ${txt_loginlink}

open my browser
    [Arguments]    ${siteurl}    ${browsername}
    Open Browser    ${siteurl}    ${browsername}
    Maximize Browser Window

enter user name
    [Arguments]    ${username}
    Input Text    ${txt_loginUsername}    ${username}

enter password
    [Arguments]    ${password}
    Input Text    ${txt_loginpassword}    ${password}

click login button
    Click Button    ${btn_login}
verify login successful
    Page Should Contain    Welcome to our store

close my browser
    Close Browser
    


