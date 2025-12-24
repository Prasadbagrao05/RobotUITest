*** Settings ***
Suite Setup    Log To Console    opening browser
Suite Teardown    Log To Console    closing browser

Test Setup    Log To Console    login to application
Test Teardown    Log To Console    logout from application
Library    Collections

*** Test Cases ***
TC_1Prepaid Recharge
    Log To Console    Recharge Prepaid done

TC_2Postpaid Recharge
    Log To Console    Post Paid Recharge done

TC3_tEST3
    Log To Console    Test 3
    