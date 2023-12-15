**Settings**

Library     SeleniumLibrary



**Variables**

${browser}              chrome
${url}                  https://cct.techmail.com.br/login
${linkExportar}         https://cct.techmail.com.br/exportacao
${FilaConsulta}         https://cct.techmail.com.br/exportacao
${FilaResgate}          https://cct.techmail.com.br/exportacao/operacoes
${usuario}              yan.souza
${senha}                180921M@


#Elementos
${loginUsuario}         //input[@id="input-login"]
${loginSenha}           //input[@id="input-senha"]
${entrar}               //input[@type="submit"]
${LoopInfinito}        ${True}



**Keywords**
Abrir navegador e logar
            
    
        Open browser                ${url}                         ${browser}
        Maximize Browser Window
        Input Text                  ${loginUsuario}                ${usuario}
        Input Text                  ${loginSenha}                  ${senha}
        Click Element               ${entrar}
    WHILE    ${LoopInfinito}
            Go To                       ${FilaConsulta}
            Sleep        3s
            Go To                       ${FilaResgate}

    END



**Test Cases**
Cenario 1: Entrar no cct e logar
        Abrir navegador e logar