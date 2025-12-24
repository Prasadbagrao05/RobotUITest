*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resources.robot

*** Variables ***
${appurl}=    https://testautomationpractice.blogspot.com/
${browser}=    chrome

*** Test Cases ***
TC_User defined Keywords
    ${pagetitle}=    LaunchBrowser    ${appurl}    ${browser}     ## storing the title in a variable
    Log To Console    ${pagetitle}   
    Input Text    xpath://input[@id='name']    Prasad
    Input Text    xpath://input[@id='email']    Password


    

