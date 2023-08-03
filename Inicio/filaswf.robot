**Settings    **

Library        SeleniumLibrary

* Variables *

${linkWf}                        https://wfdocumentos.techmail.com.br/
${linkDocumentos}                https://wfdocumentos.techmail.com.br/index.php?module=AnaliseDocumentos&view=List
${browser}                       chrome
${botaoEntrar}                   //*[@id="forgotPassword"]/button


#Login

${loginUser}                    //*[@id="username"]
${loginSenha}                   //*[@id="password"]


#Elementos

${dropDown}                                            //*[@id="s2id_customFilter"]
${selecionarTodos}                                     //*[@id="listViewEntriesMainCheckBox"]
${campoFila}                                           //div[@class='select2-search']/input[@type='text']





        


* Keywords *   
Abrir site e logar
        Open Browser     ${linkWf}        ${browser}
        Maximize Browser Window
        Input Text    ${loginUser}    robo
        Input Text    ${loginSenha}    01sisvtiger17*
        Click Button    ${botaoEntrar}
        



        Go To    ${linkDocumentos}


            Wait Until Element Is Visible       ${dropDown}     20            
            Click Element    ${dropDown}
            Wait Until Element Is Visible    ${campoFila}
            Input Text    ${campoFila}        01     #Fila vigencia        
            Press Key    ${campoFila}    \\13            
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}
            Sleep    10s


           
            Click Element    ${dropDown}
            Wait Until Element Is Visible    ${campoFila}
            Input Text    ${campoFila}        02
            Press Key    ${campoFila}    \\13
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}
            Sleep    10s



            
            Click Element    ${dropDown}
            Wait Until Element Is Visible    ${campoFila}
            Input Text    ${campoFila}        04
            Press Key    ${campoFila}    \\13
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}
            Sleep    10s



           
            Click Element    ${dropDown}
            Wait Until Element Is Visible    ${campoFila}
            Input Text    ${campoFila}        16.1
            Press Key    ${campoFila}    \\13
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}
            Sleep    10s


            
            Click Element    ${dropDown}
            Wait Until Element Is Visible    ${campoFila}
            Input Text    ${campoFila}        16.2
            Press Key    ${campoFila}    \\13
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}
            Sleep    10s


            
            Click Element    ${dropDown}
            Wait Until Element Is Visible    ${campoFila}
            Input Text    ${campoFila}        22
            Press Key    ${campoFila}    \\13
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}
            Sleep    10s


**Test Cases **
Cenário 1: Abrir plataforma WF, logar e checar filas
        Abrir site e logar