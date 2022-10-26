*** Settings ***
Documentation        POST /partners

Resource             ${EXECDIR}/resourcers/base.robot

*** Test Cases ***
Should create a new partner

    ${partner}            Factory New Partner

    Remove Partner By Name        ${partner}[name]

    
    ${response}           POST Partner         ${partner}       

    Status Should Be      201 
    ${result}                  Find Partner By Name                      ${partner}[name]      
    Should Be Equal            ${response.json()}[partner_id]            ${result}[_id]


Should return duplicate company name
    
    [Tags]                bugs
    ${partner}            Factory New Partner

    
    Create a new partner        ${partner}


    ${response}           POST Partner         ${partner}
    Status Should Be      409 

    Should Be Equal       ${response.json()}[message]        Duplicate company name      
    

