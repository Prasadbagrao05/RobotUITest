*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC_Close all tabs
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Open Browser    https://www.bing.com    chrome
    Maximize Browser Window
    Open Browser    https://www.yahoo.com    chrome
    Maximize Browser Window
    ##Close Browser    ## this will close the current active browser
    Close All Browsers    ## this will close all the browsers opened by seleniumlibrary