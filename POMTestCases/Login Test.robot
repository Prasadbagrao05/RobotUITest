*** Settings ***
Library    SeleniumLibrary
Resource    ../POMResources/Loginkeywords.robot


*** Variables ***
${browsername}=    chrome
${siteurl}=    https://demowebshop.tricentis.com/
${username}=    malefemale123@gmail.com
${password}=    male@123

*** Test Cases ***
TC_01
    open my browser    ${siteurl}    ${browsername}
    click on login link
    enter user name    ${username}
    enter password    ${password}
    click login button
    Sleep    3
    verify login successful
    close my browser
    