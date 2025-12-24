*** Settings ***
Library    SeleniumLibrary
Library    REST
*** Test Cases ***
TC_fRAMES
    Open Browser    https://practice.expandtesting.com/iframe   chrome
    Maximize Browser Window

    Select Frame    email-subscribe    ###selecting the frame using name or id
    Input Text    email    prasad
    Unselect Frame    ##unselecting the frame to go back to the next frame

    Select Frame    mce_0_ifr
    Input Text    id:tinymce    Hello Frame1
    

   