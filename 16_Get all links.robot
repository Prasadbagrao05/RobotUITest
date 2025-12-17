*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_get all links on the application

    Open Browser    https://www.google.com/?safe=active&ssui=on    chrome
    Maximize Browser Window

    ${alllinks}=    Get Element Count    xpath://a        ##//a is the xpath of all the links as all the links starts with "a"
    Log To Console    ${alllinks}

    @{linkitems}    Create List    

    FOR    ${i}    IN RANGE    1    ${alllinks}    
        ${linktext}=    Get Text    xpath:(//a)[${i}]
        Log To Console    ${linktext}
        
    END