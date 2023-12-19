*** Settings   ***

Library     SeleniumLibrary





*** Variables   ***

${variavel1}    teste
${variavel2}    hhh
${variavel3}    1234




*** Keywords    ***

Abrir site do google
    Open Browser    https://www.google.com/     chrome

Fechar navegador
    Close Browser

Abrir site da globo
        Open Browser    https://www.globo.com/?utm_source=barraGCOM     chrome


*** Test Cases   ***

cenario 1: Teste de abrir navegador

    Abrir site do google
    Fechar navegador 

cenario 2: Teste de abrir globo
    Abrir site da globo
    Fechar navegador
