***Settings***

Library        SeleniumLibrary


***Variables***
#Dados do teste
${nomeDaMusica}     Taylor Swift Betty

#Variáveis de configuração
${url}              https://www.youtube.com/
${browser}          chrome 


#Elementos
${inputSearch}                  //input[@id="search"]
${buttonSearch}                 //button[@id="search-icon-legacy"]
${firstVideoTitle}              (//a[@id="video-title"])[1]
${prova}                        (//yt-button-shape[@id="subscribe-button-shape"])[1]            





***Keywords***

Dado que eu acesso o site do youtube
        Open Browser     ${url}     ${browser}  
        Maximize Browser Window 


Quando digito o nome da música
        Input Text      ${inputSearch}      ${nomeDaMusica}


E clico no botão buscar
        Click Element       ${buttonSearch} 
              


E clico na primeira opção da lista
        Wait Until Element Is Visible       ${firstVideoTitle}     3
        Click Element                       ${firstVideoTitle}
        


Então o vídeo é executado
        Wait Until Element Is Visible       ${prova}    3
        Element Should Be Visible           ${prova}
        Sleep       3s 




***Test Cases***
Cenário 1: Executar vídeo no site do youtube
        Dado que eu acesso o site do youtube
        Quando digito o nome da música
        E clico no botão buscar
        E clico na primeira opção da lista
        Então o vídeo é executado