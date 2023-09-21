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
${loop_infinito}                                       ${True}
${validarLogado}                                       //*[@id="AnaliseDocumentos_sideBar_link_LBL_RECORDS_LIST"]


        


* Keywords *   
Abrir site e logar        
        Open Browser     ${linkWf}        ${browser}
        Maximize Browser Window
        Input Text    ${loginUser}    robo
        Input Text    ${loginSenha}    01sisvtiger17*
        Click Button    ${botaoEntrar}
        


Ir para documentos
        Go To    ${linkDocumentos}        #altera para link de Documentos


Loop de filas
    WHILE    ${loop_infinito}    #WHILE para fazer com que repetição seja infinita sem fechar o browser
        @{filas}    Create List    01    02    04    16.1    16.2    22  #crio lista das filas
        FOR    ${fila}    IN    @{filas}         #FOR para percorrer a lista das filas

            Wait Until Element Is Visible       ${dropDown}     20            
            Click Element    ${dropDown}
            Wait Until Element Is Visible    ${campoFila}
            Input Text    ${campoFila}        ${fila}     #Insere número da fila         
            Press Key    ${campoFila}    \\13    #Dá enter para ir para fila        
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}        #Seleciona todos os itens pendentes da fila
            Sleep    10s        
            
        END
    END





**Test Cases **
Cenário 1: Abrir plataforma WF, logar e checar filas
        Abrir site e logar
        Ir para documentos
        Loop de filas




