*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1_Scrolling Using Pixel
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Execute Javascript    window.scrollTo(0,1000)        ##0 is horizontal and 1000 is vertical score
    
TC_sCROLL TILL Element
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Scroll Element Into View    xpath://input[@id='comboBox']    ## it will scroll till it found the element


TC_Scroll till bottom
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window

    Execute Javascript    window.scrollTo(0,document.body.scrollHeight)   ## end of the page
    Sleep    2
    Execute Javascript    window.scrollTo(0,~document.body.scrollHeight)  ## start of the page
    