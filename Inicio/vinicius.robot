*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL_GOOGLE}    https://www.google.com
${URL_FACEBOOK}    https://www.facebook.com
${EMAIL}    vini.meroni@gmail.com
${SENHA}    abc1234
${key_enter}        \\13

*** Test Cases ***
Acessar Google e Entrar no Facebook
    Abrir Navegador    ${BROWSER}
    Acessar o Google
    Procurar por Facebook
    Procurar por Facebook
    Preencher Dados de Acesso do Facebook
    Fechar Navegador

*** Keywords ***
Abrir Navegador
    Open Browser    ${URL_GOOGLE}    ${browser}

Acessar o Google
    Go To    ${URL_GOOGLE}

Procurar por Facebook
    Input Text    name=q    facebook
    Press Key    name=q     ${key_enter}  # Pressionar Enter

Clicar no link do Facebook
   Wait Until Page Contains Element    link=Facebook
    Click Link    link=Facebook


Preencher Dados de Acesso do Facebook
    Wait Until Page Contains    Facebook
    Click Link    Facebook
    Wait Until Page Contains    Entrar
    Click Link    Entrar
    Input Text    name=email    ${EMAIL}
    Input Password    name=pass    ${SENHA}
    Click Button    name=login
