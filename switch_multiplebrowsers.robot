*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Multi browsers
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    

    Open Browser    https://www.bing.com    chrome
    Maximize Browser Window
    Sleep    2
  
    ###opening and switchong between multiple browsers is based on index starting from 1

    Switch Browser    1    ##switching to 2nd browser based on index
    Sleep    2
    ${titles}=    Get Title
    Log To Console    ${titles}