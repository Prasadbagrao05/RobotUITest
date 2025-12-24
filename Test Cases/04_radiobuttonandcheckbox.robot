*** Settings ***
Library    SeleniumLibrary
Library    os

*** Variables ***
${browser}=    chrome
${url}=    https://testautomationpractice.blogspot.com/

*** Test Cases ***
TC_Radio Button and check boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ##Set Selenium Speed    1

    ##selecting radio button
    Select Radio Button    gender    male    ##select rdo button is a keyword and we should give 2 parameters 1.Name 2.value from inspect
    
    ##selecting check box
    Select Checkbox    sunday
    Select Checkbox    monday
    Select Checkbox    saturday

    ##unselecting satuarday
    Unselect Checkbox    saturday

    Close Browser


