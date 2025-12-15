
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}=    https://demo.nopcommerce.com/
${url_yt}=    https://www.youtube.com/

*** Test Cases ***
Open Google In Chrome
    Open Browser    ${url}    ${browser}    ###open browser
    Input Text    id:small-searchterms    Apple
    Click Element    xpath://button[normalize-space()='Search']
    

