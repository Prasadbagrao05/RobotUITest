*** Settings ***
Library    SeleniumLibrary
Library    REST

*** Variables ***
${browser}=    chrome
${url}=    https://testautomationpractice.blogspot.com/

*** Test Cases ***
TC_Practice
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    
    Set Selenium Speed    2
    
    Title Should Be    Automation Testing Practice

    Input Text    name    Prasad
    Input Text    email    prasad@ymail.com
    Input Text    phone    3945632449
    Input Text    textarea    Mumbai, Pune, NaviMumbai

    Select Radio Button    gender    male
    Select Checkbox    sunday
    Select Checkbox    monday

    Select From List By Index    country    1
    

    Select From List By Index    colors    0
    Select From List By Index    colors    2
    Select From List By Index    colors    3

    Click Link    xpath://a[normalize-space()='Online Trainings']
    Click Link    xpath://a[@href='https://www.udemy.com/course/learn-playwright-web-api-testing-with-typescript/']

