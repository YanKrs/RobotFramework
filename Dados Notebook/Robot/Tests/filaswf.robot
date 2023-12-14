*Settings    *

Library        SeleniumLibrary

* Variables *

${linkWf}                                    https://wfdocumentos.techmail.com.br/
${linkDocumentos}                            https://wfdocumentos.techmail.com.br/index.php?module=AnaliseDocumentos&view=List
${browser}                                   chrome
${botaoEntrar}                               //*[@id="forgotPassword"]/button
${linkPendenteEnvVigencia}                   https://wfdocumentos.techmail.com.br/index.php?module=AnaliseDocumentos&parent=&page=1&view=List&viewname=76
${linkPendenteERetornVigencia}               https://wfdocumentos.techmail.com.br/index.php?module=AnaliseDocumentos&parent=&page=1&view=List&viewname=77
${linkPendenteEnvInfo}                       https://wfdocumentos.techmail.com.br/index.php?module=AnaliseDocumentos&parent=&page=1&view=List&viewname=79
${linkPendenteEnvRecusa}                     https://wfdocumentos.techmail.com.br/index.php?module=AnaliseDocumentos&parent=&page=1&view=List&viewname=72




#Login

${loginUser}                    //*[@id="username"]
${loginSenha}                   //*[@id="password"]


#Elementos

${dropDown}                                            //*[@id="rightPanel"]/div[2]/div[1]/div/span[2]/span
${selecionarTodos}                                     //*[@id="listViewEntriesMainCheckBox"]
${campoFila}                                           //*[@id="s2id_customFilter"]/a
${loop_infinito}    ${True}



        


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
        @{filas}    Create List    ${linkPendenteEnvVigencia}      ${linkPendenteERetornVigencia}      ${linkPendenteEnvInfo}  #crio lista das filas   
        FOR    ${fila}    IN    @{filas}         #FOR para percorrer a lista das filas

            Wait Until Element Is Visible       ${dropDown}     20            
            Go To    ${fila}     
            Wait Until Element Is Visible    ${selecionarTodos}
            Click Element    ${selecionarTodos}        #Seleciona todos os itens pendentes da fila
            Sleep    10s        
            
        END
    END


*Test Cases *
Cenário 1: Abrir plataforma WF, logar e checar filas
        Abrir site e logar
        Ir para documentos
        Loop de filas