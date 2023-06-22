*** Settings ***
Library  SeleniumLibrary
Library    Telnet


*** Variables ***
${URL}                           http://www.amazon.com.br/  
${MENU_ELETRONICOS}              //a[contains(.,'Eletrônicos')]
${HEADER_DEPARTAMENTOS}            //span[@class='a-size-base a-color-base a-text-bold'][contains(.,'Departamento')]
${TEXTO_HEADER_ELETRONICOS}      Eletrônicos e Tecnologia 
${BARRA_DE_MENUS}                //div[@id='nav-xshop']
${BOTAO_PESQUISA}               //span[contains(@id,'nav-search-submit-text')]
${MAX_ATTEMPTS}=    Set Variable    5    # Número máximo de tentativas de recarga
${attempts}=    Set Variable    0    # Contador de tentativas

               


*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome  options=add_experimental_option("detach", True)
    Set Window Size    3000       1500
    
Fechar o navegador
    Capture Page Screenshot
    Close Browser


Acessar a home page do site Amazon.com.br
    Go To    ${URL}
 
    ${BARRA_DE_MENUS}=    Run Keyword And Return Status    Element Should Be Visible    ${BARRA_DE_MENUS}
    Run Keyword If    '${BARRA_DE_MENUS}' == 'False'        reload Page
# continuar com o teste aqui...

# : FOR    ${i}    IN    0    1    2    3    4
# \    ${BARRA_DE_MENUS}=    Run Keyword And Return Status    Element Should Be Visible    ${BARRA_DE_MENUS}
# \    Run Keyword If    '${BARRA_DE_MENUS}' == 'False'    reload Page
# \    Exit For Loop If    '${BARRA_DE_MENUS}' == 'True'

    Capture Page Screenshot


Entrar no menu "Eletrônicos"

    Wait Until Element Is Visible    ${MENU_ELETRONICOS}
    Click Element    ${MENU_ELETRONICOS}
    Wait Until Element Is Visible    locator=//span[@class='a-size-base a-color-base apb-browse-refinements-indent-1 a-text-bold'][contains(.,'Eletrônicos e Tecnologia')]
    Capture Page Screenshot



Verificar se aparece a frase "${FRASE}" 
    Wait Until Page Contains    text=${FRASE}
    Wait Until Element Is Visible    ${HEADER_DEPARTAMENTOS}
    Capture Page Screenshot



Verificar se o título da página fica "${TITULO}"
    Title Should Be    ${TITULO}
    Capture Page Screenshot


Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible      //span[@dir='auto'][contains(.,'${NOME_CATEGORIA}')]
    Capture Page Screenshot

Digitar o nome de produto "${NOME_PRODUTO}" no campo de Pesquisa
    
    Wait Until Element Is Visible    //input[contains(@name,'field-keywords')]
    Input Text    //input[contains(@name,'field-keywords')]   text="${NOME_PRODUTO}"
    Capture Page Screenshot



    

Clicar no botão de Pesquisa
  #  Wait Until Element Is Visible     ${BOTAO_PESQUISA}
     Element Should Be Visible  ${BOTAO_PESQUISA}
     ${BOTAO_PESQUISA}=    Run Keyword And Return Status    Element Should Be Visible    ${BOTAO_PESQUISA}
    Run Keyword If    '${BOTAO_PESQUISA}' == 'False'        reload Page
    Click Element    ${BOTAO_PESQUISA}
    Capture Page Screenshot

Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"
        Wait Until Element Is Visible   (//h2[contains(.,'${NOME_PRODUTO}')])[1]

        
        
#GHERKIN STEPS


Dado que estou na home page da Amazon.com.br
        Acessar a home page do site Amazon.com.br
    
Quando acessar o menu "Eletrônicos"
        Entrar no menu "Eletrônicos"
 
    
Então o título da página deve ficar "${TITULO}" 
    Verificar se o título da página fica "${TITULO}" 

E o texto "${frase}" deve ser exibido na página
    Verificar se aparece a frase "${FRASE}" 

E a categoria "${NOME_CATEGORIA}" deve ser exibida na página
    Verificar se aparece a categoria "${NOME_CATEGORIA}"

Quando pesquisar pelo produto "${NOME_PRODUTO}"
    Digitar o nome de produto "${NOME_PRODUTO}" no campo de Pesquisa
   
E clicar no botão de pesquisa
    Clicar no botão de Pesquisa 

Então o produto "${NOME_PRODUTO}" deve ser mostrado na página  
    Verificar o resultado da pesquisa se está listando o produto "${NOME_PRODUTO}"


    
    


