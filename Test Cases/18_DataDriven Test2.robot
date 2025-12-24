*** Settings ***
Library    SeleniumLibrary
Resource    C:/Automation workspace/Tests/Test Suit/RobotUITest/Resources/18_login_resourses.robot
Library    DataDriver    C:/Automation workspace/Tests/Test Suit/RobotUITest/Test Data/Login.csv   
Suite Setup    open my browser
Test Template    Invalid login


*** Test Cases ***
Login Testcase with Excel using ${username} and ${password}

## test case takes all the username and password data from the excel mentioned in the settings

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    Enter username    ${username}
    Enter Password    ${password}
    click login
    Dashboard should be visible

