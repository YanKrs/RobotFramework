*** Settings ***

Library     SeleniumLibrary

*** Variables ***

${input_name}                   //input[@id="name"]
${input_phone}                  //input[@id="phone"]
${input_email}                  //input[@id="email"]
${input_password}               //input[@id="password"]
${textarea_address}             //textarea[@id="address"]
${button_submit}                //button[@name="submit"]



*** Keywords ***

Abrir navegador
    Open Browser    https://itera-qa.azurewebsites.net/home/automation   chrome
    Maximize Browser Window

Inserir dados nos campos
        Input Text      ${input_name}               Yan
        Input Text      ${input_email}              teste@teste.com
        Input Text      ${input_phone}              0000000000
        Input Text      ${input_password}           ajsdasd
        Input Text      ${textarea_address}         asdasdasd

        


Dar submit  
    Click button        ${button_submit}  



*** Test Cases   ***

Cenario 1: Faz tudo
        Abrir navegador
        Inserir dados nos campos
        Dar submit