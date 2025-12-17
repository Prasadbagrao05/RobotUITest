

*** Test Cases ***
For Loop using range
    FOR    ${i}    IN RANGE    1   10
        LOG TO Console    ${i}
        
    END

For Loop using in
    
    FOR    ${element}    IN    @{1,2,3,4,5,6,7,8}
        Log To Console    ${element}
        
    END
    
For Loop using list

    @{items}=    Create List    1    2    3    4    5    6    ## list is created

    FOR    ${element}    IN    @{items}    ## mentioned the list
        Log To Console    ${element}
        
    END

For loop using storing

    FOR    ${i}    IN    Apple    Mango    Banana    Cherry
        Log To Console    ${i}
        
    END

For loop with exit
    @{items}    Create List    1    2    3    4    5    6    7

    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i}==4
        
    END
    
