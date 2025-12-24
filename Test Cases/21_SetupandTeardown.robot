*** Settings ***
Suite Setup    Log To Console    opening browser    ## will run once at the start of the test suit
Suite Teardown    Log To Console    closing browser    ## will run once at the end of the test suit

Test Setup    Log To Console    login to application    ## will run everytime at the start of each testcase
Test Teardown    Log To Console    logout from application    ## will run everytime at the end of each testcase
Library    Collections

*** Test Cases ***
TC_1Prepaid Recharge
    Log To Console    Recharge Prepaid done

TC_2Postpaid Recharge
    Log To Console    Post Paid Recharge done

TC3_tEST3
    Log To Console    Test 3
