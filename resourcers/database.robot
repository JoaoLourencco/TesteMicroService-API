*** Settings ***
Documentation        Database helpers connetion

Library              RobotMongoDBLibrary.Delete
Library              RobotMongoDBLibrary.Find


*** Variables ***
&{MONGO_URI}               connection=mongodb+srv://bugereats:bugereats123@cluster0.wsk6eso.mongodb.net/PartnerDB?retryWrites=true&w=majority     database=PartnerDB   collection=partner  


*** Keywords ***

Remove Partner By Name

    [Arguments]           ${partner_name}
    ${Filter}             Create Dictionary
    ...                   name=${partner_name}
    Delete One            ${MONGO_URI}         ${Filter} 

Find Partner By Name
    
    [Arguments]           ${partner_name}
    ${Filter}             Create Dictionary
    ...                   name=${partner_name}
    ${results}      Find       ${MONGO_URI}    ${Filter}
    [Return]             ${results}[0]           

    
    
