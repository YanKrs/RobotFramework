*** Settings   ***

Library     SeleniumLibrary



*** Variables   ***

${input_name}           //input[@id="name"]
${input_phone}          //input[@id="phone"]
${input_email}          //input[@id="email"]
${input_password}       //input[@id="password"]
${textarea_address}     //textarea[@id="address"]
${button_submit}        //button[@name="submit"]



*** Keywords    ***

abrir navegador
    Open Browser    https://itera-qa.azurewebsites.net/home/automation  chrome  
    Maximize Browser Window 


preencher campos
    Input Text      ${input_name}           Yan
    Input Text      ${input_phone}          11973315852
    Input Text      ${input_email}          teste@teste
    Input Text      ${input_password}       123456
    Input Text      ${textarea_address}     Rua Vital 
    
 


clicar em submit
    Click Element   ${button_submit}


fechar navegador
    Close Browser



*** Test Cases   ***
Cenário 1: Preencher formulário
    abrir navegador
    preencher campos
    clicar em submit
    fechar navegador
