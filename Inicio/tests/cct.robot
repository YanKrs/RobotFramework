***Settings***

Library     SeleniumLibrary



***Variables***

${browser}      edge
${url}          https://cct.techmail.com.br/login
${usuario}      yan.souza
${senha}        180921M@


#Elementos
${loginUsuario}         //input[@id="input-login"]
${loginSenha}           //input[@id="input-senha"]
${entrar}               //input[@type="submit"]
${documentos}           //a[@style="padding-right: 23px;"]
${roboConsulta}         (//a[@href="javascript:void(0)"])[2]
${exportar}             //a[@href="https://cct.techmail.com.br/exportacao"]



***Keywords***
Abrir navegador e logar
        Open browser                ${url}                         ${browser}
        Maximize Browser Window
        Input Text                  ${loginUsuario}                ${usuario}
        Input Text                  ${loginSenha}                  ${senha}
        Click Element               ${entrar}
        Mouse Down On Link          ${documentos}
        Mouse Down On Link          ${roboConsulta}  
        Mouse Down On Link          ${roboConsulta}
        Click Element               ${exportar}

        Sleep        5s





***Test Cases***
Cenario 1: Entrar no cct e logar
        Abrir navegador e logar