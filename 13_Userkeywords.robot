*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${appurl}=    https://testautomationpractice.blogspot.com/
${browser}=    chrome

*** Test Cases ***
TC_User defined Keywords
    ${pagetitle}=    LaunchBrowser    ${appurl}    ${browser} 
    Log To Console    ${pagetitle}   
    Input Text    xpath://input[@id='name']    Prasad
    Input Text    xpath://input[@id='email']    Password

*** Keywords ***

LaunchBrowser
    [Arguments]    ${url}    ${appbrowser}
    Open Browser    ${url}    ${appbrowser}    ### Keywords with Arguments
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}                       ## keyword with returning value

    

