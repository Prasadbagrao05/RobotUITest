*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}    chrome
${url}=    https://testautomationpractice.blogspot.com/

*** Test Cases ***
TC Dropdown and List boxes
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

    ##selecting values from dropdown

    Select From List By Label    country    Canada       ##selecfromlisybylabel is a keyword need to give 1.name 2.label of ddl
    Sleep    2

    Select From List By Index    country    3    ##give 1.name ofddl 2.Index of the value from the ddl
    Sleep    2

    ###selecting multiple vaues from listbox

    Select From List By Index    colors    0
    Select From List By Index    colors    1
    Select From List By Index    colors    3
    Sleep    2

    Unselect From List By Index    colors    3