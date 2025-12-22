*** Settings ***
Library    SeleniumLibrary
Library    os
*** Test Cases ***
TC_Table Validations

    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    ##Maximize Browser Window

    ${rows}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr     ## counting rows 
    Log To Console    ${rows}

    ${cols}=    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th    ## counting columns
    Log To Console    ${cols}

    ${value}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]        ## getting exact value from a table
    Log To Console    ${value}

    Table Column Should Contain    xpath://th[normalize-space()='BookName']    2    Author  ##calidating value in column using table xpath

    Table Row Should Contain    xpath://th[normalize-space()='BookName']    7    Master In JS  ##calidating value in row using table xpath 

    Table Cell Should Contain    xpath://th[normalize-space()='BookName']    5    2    Mukesh

    Table Header Should Contain    xpath://th[normalize-space()='BookName']    BookName