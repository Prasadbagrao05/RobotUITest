*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}=    chrome
${url}=    https://demo.nopcommerce.com/

*** Test Cases ***
TC_Input Box
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Title Should Be    nopCommerce demo store. Home page title    ###verifying the title of the page
    Sleep    3
    Click Link    xpath://a[normalize-space()='Log in']

    ##storing the element in a variable
    ${mail}    Set Variable    xpath://input[@id='Email']
    Element Should Be Visible    ${mail}    ##checking if the txt box is visible
    
    Element Should Be Enabled    ${mail}    ##checking if it is enable to add text

    ##Element Should Not Be Visible    ${mail}    ##negative test case to check failure

    Input Text    ${mail}    Prasad.bagrao@xyz.com
    Sleep    5

    Clear Element Text    ${mail}    ##clearing the text we have added in the box using the variable
    Sleep    3
    Close Browser


*** Keywords ***