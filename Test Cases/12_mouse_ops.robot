*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC_Mouse
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize Browser Window

    ##Performing right click on the button to open context menu
    ##Open Context Menu    xpath://ul[@class='context-menu-list context-menu-root']
    ##Sleep    3


    ##Double Click action on the button
    Go To    https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[normalize-space()='Copy Text']
    Sleep    3

    ##Drag and Drop action
    Drag And Drop    id:draggable    id:droppable
    Sleep    3

    
TC_ Mouse over

    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

    Mouse Over    xpath://button[normalize-space()='Point Me']
    Sleep    2
    Click Element    xpath://a[normalize-space()='Mobiles']
    Sleep    2