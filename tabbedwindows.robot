*** Settings ***
Library    SeleniumLibrary
Library    REST

*** Variables ***
${browser}=    chrome
${url}=    https://testautomationpractice.blogspot.com/
*** Test Cases ***
TC_Tbbed Window
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Link    xpath://a[normalize-space()='Online Trainings']
    Click Link    xpath://a[@href='https://www.udemy.com/course/learn-playwright-web-api-testing-with-typescript/']

    Switch Window    title=Learn Playwright with TypeScript (Web & API Testing) | Udemy    ##switching tab using title of the new page
    Sleep    2
    Click Link    xpath://span[@class='ud-text-bold']
    Sleep    3
       


