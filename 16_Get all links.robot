*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_get all links on the application

    Open Browser    https://www.google.com/?safe=active&ssui=on    chrome
    Maximize Browser Window

    ${alllinks}=    Get Element Count    xpath://a        ##//a is the xpath of all the links as all the links starts with "a"
    Log To Console    ${alllinks}        ## got total count of links using Get element count

    @{linkitems}    Create List    

    FOR    ${i}    IN RANGE    1    ${alllinks}    
        ${linktext}=    Get Text    xpath:(//a)[${i}]  ##printing the name of link using xpath and the countelement
        Log To Console    ${linktext}
        
    END