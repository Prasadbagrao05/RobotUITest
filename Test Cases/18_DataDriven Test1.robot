*** Settings ***
Library    SeleniumLibrary
Resource   C:/Automation workspace/Tests/Test Suit/RobotUITest/Resources/18_login_resourses.robot
Suite Setup    open my browser    ## this will help in opening the browser only once
Test Template    Invalid login


*** Test Cases ***
Correct user and Empty Password    PrintPdf@yz.com    ${EMPTY}
Correct user wrong password    admin@yourstore.com    Prasad
wrong user Correct password    PrintPdf@yz.com    admin

    
*** Keywords ***
Invalid login
    [Arguments]    ${username}    ${password}
    Enter username    ${username}
    Enter Password    ${password}
    click login
    Error Message should be visible