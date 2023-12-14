*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${linkWf}                        https://wfdocumentos.techmail.com.br/
${linkDocumentos}                https://wfdocumentos.techmail.com.br/index.php?module=AnaliseDocumentos&view=List
${browser}                       chrome
${botaoEntrar}                   //*[@id="forgotPassword"]/button

#Login
${loginUser}                    //*[@id="username"]
${loginSenha}                   //*[@id="password"]

*** Test Cases ***
Cenário 1: Abrir site e logar
         site e logar

*** Keywords ***
site e logar
        Open Browser     ${linkWf}        ${browser}
        Maximize Browser Window
        Input Text    ${loginUser}    robo
        Input Text    ${loginSenha}    01sisvtiger17*
        Click Button    ${botaoEntrar}
