*** Settings ***

Documentation            Helpers

*** Keywords ***

Create a new partner
    [Arguments]           ${partner} 

    Remove Partner By Name        ${partner}[name]
    ${response}                   POST Partner           ${partner}     
    ${partner_id}                 Set Variable           ${response.json()}[partner_id] 

    [return]            ${partner_id}