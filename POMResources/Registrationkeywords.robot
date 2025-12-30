*** Settings ***
Library    SeleniumLibrary
Variables    ../POMPageobj/Locators.py

*** Keywords ***

open my browser    
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Select Gender
    [Arguments]    ${gender1}
    Select Radio Button    ${gender}    ${gender1}
    Radio Button Should Be Set To    ${gender}    ${gender1}
click registration link    
    Click Link    ${reglink}

Enter First name
    [Arguments]    ${firstname}
    Input Text    ${fname}    ${firstname}

Enter Last name
    [Arguments]    ${lastname}
    Input Text    ${lname}    ${lastname}

Enter emailid
    [Arguments]    ${emailid}
    Input Text    ${email}    ${emailid}

Enter Password
    [Arguments]    ${password}
    Input Text    ${pwd}    ${password}

Enter Confirm Password
    [Arguments]    ${confirmpassword}
    Input Text    ${cnfpwd}    ${confirmpassword}

Click on Register button
    Click Element    ${button_register}


