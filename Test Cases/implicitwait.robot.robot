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

    Set Selenium Implicit Wait    5
    Select Radio Button    Gender    M
    Input Text    xpath://input[@id='FirstName']1    Prasad    ##xpath is incorrect here for testing implicit wait
    Input Text    xpath://input[@id='LastName']    Voldo
    Input Text    xpath://input[@id='Password']    password123
    Input Text    xpath://input[@id='ConfirmPassword']    password123



    ### if we the locator of the input test ua not found and it is giving some eror in this case it will be error
    ### so if we want to wait for some time until the element is found we can use implicit wait
    ### this will wait for the element to be found for the given time
    ### it will be only applied for the element not found error and the wait time will not be applied for other steps

    
    