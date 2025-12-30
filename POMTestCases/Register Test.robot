*** Settings ***
Library    SeleniumLibrary
Resource    ../POMResources/Registrationkeywords.robot

*** Variables ***
${url}=    https://demowebshop.tricentis.com/
${browser}=    chrome
${gender1}=    M
${firstname}=    Voldo
${lastname}=    Voldo
${emailid}=    voldovoldo@gmail.com
${password}=    voldovoldo@123
${confirmpassword}=    voldovoldo@123

*** Test Cases ***
Test Cases
    open my browser    ${url}    ${browser}
    click registration link
    ##Select Gender    ${gender1}
    Enter First name    ${firstname}
    Enter Last name    ${lastname}
    Enter emailid    ${emailid}
    Enter Password    ${password}
    Enter Confirm Password    ${confirmpassword}
    Click on Register button
    