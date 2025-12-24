*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_Navigation test
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    ${location}=    Get Location    ###getting the current url/location of the page
    Log To Console    ${location}

    Go To    https://www.youtube.com/    ###navigating to new url
    Sleep    2

    Go Back    ###navigating back to previous page i.e. google.com
    Sleep    2