*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

LaunchBrowser
    [Arguments]    ${url}    ${appbrowser}
    Open Browser    ${url}    ${appbrowser}    ### Keywords with Arguments
    Maximize Browser Window
    ${title}=    Get Title
    [Return]    ${title}                       ## keyword with returning value
