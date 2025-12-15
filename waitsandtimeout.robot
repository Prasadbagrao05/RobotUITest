*** Settings ***
Library    SeleniumLibrary
Library    REST
*** Variables ***
${browser}=    chrome
${url}=    https://demowebshop.tricentis.com/register

*** Test Cases ***
Registration Test
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${speedtime}=    Get Selenium Speed    ## we can get the speed of the steps

    Set Selenium Speed    1    ##this will by default set the time for each step with 1 sec delay
    

    ## if we want to wait and verify some validation and then we need to do the following steps

    Set Selenium Timeout    10s    ## this will set the timeout for all the steps to 10 sec
    Wait Until Page Contains    Hui    5
    
    Select Radio Button    Gender    M
    Input Text    xpath://input[@id='FirstName']    Prasad
    Input Text    xpath://input[@id='LastName']    Voldo
    ##Input Text    xpath://input[@id='Email']    voldo@yaml.com
    Input Text    xpath://input[@id='Password']    password123
    Input Text    xpath://input[@id='ConfirmPassword']    password123
