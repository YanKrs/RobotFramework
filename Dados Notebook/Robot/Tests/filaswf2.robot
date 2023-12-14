*** Settings ***
Library        SeleniumLibrary

*** Variables ***

${urlwf}        https://wfdocumentos.techmail.com.br/
${browser}        chrome


#elementos
${loginUser}            //*[@id="username"]
${loginSenha}           //*[@id="password"]
${botaoEntrar}          //*[@id="forgotPassword"]/button



*** Keywords ***
Abrir site e logar
    Open Browser    ${urlwf}    ${browser}
    Maximize Browser Window
    Input Text    ${loginUser}    robo
    Input Text    ${loginSenha}    01sisvtiger17*
    Click Button    ${botaoEntrar}
    Sleep    10s



***Test Cases***
Cenario 1: entrar no site e logar
        Abrir site e logar

