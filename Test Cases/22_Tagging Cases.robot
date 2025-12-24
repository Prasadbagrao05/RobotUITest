*** Settings ***

*** Test Cases ***
TC1_User Registration
    [Tags]    sanity            ## we are giving tags to the test case
    Log To Console    User Registration
    Log To Console    TC1 Successful

TC2_Login Test
    [Tags]    regression 
    Log To Console    Login Test
    Log To Console    TC2 Successful

TC3_Change User Settings
    [Tags]    regression 
    Log To Console    User Settings
    Log To Console    TC3 Successful

TC4_Logout
    [Tags]    sanity 
    Log To Console    logout
    Log To Console    TC4 Successful


## ************************* INCLUDES TEST CASES ***********************
### to run we can give commant in the terminal
## robot --include [tagname] /path

### IMPLEMENT MULTIPLE TAGS
### robot -i [TAG NAME 1] -i [TAG NAME 2] /path

## ************************* EXCLUDE TEST CASES ***********************
## robot -e [tagname] /path
