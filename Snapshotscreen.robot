*** Settings ***
library    SeleniumLibrary
*** Test Cases ***
TC_LOGIN 
    open Browser    https://www.orangehrm.com/en/30-day-free-trial#    chrome
    Maximize Browser Window
    Input Text    subdomain    Admin
    Input Text    Name    Prasad
    
    ###capturing screenshot of an specific element(like image,button,link etc.,)###
    Capture Element Screenshot    xpath://img[@alt='form-image OHRM']    C:/Automation workspace/Tests/Test Suit/logo.png


    ###capturing full page screenshot###
    Capture Page Screenshot    C:/Automation workspace/Tests/Test Suit/fullpage.png