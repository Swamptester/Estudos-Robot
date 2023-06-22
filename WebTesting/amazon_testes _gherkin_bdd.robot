
*** Settings ***

documentation  Essa suíte testa o site da amazon.com.br
Resource         amazon_resources.robot
Test Setup       Abrir o navegador
Test teardown     Fechar o navegador

*** Keywords ***
    

*** Test Cases ***
Caso de teste 01 - Acesso ao menu "Eletrônicos"
    [documentation]  esse teste verifica o menu Eletrônicos do site amazon.com.br
    ...              e verifica o título da página
    [tags]          Menus  categorias
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"  
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página

Caso de teste 02 - Categoria "Computadores e Informática"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Computadores e informática
    [tags]          Menus  categorias
     
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"  
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    E a categoria "Computadores e Informática" deve ser exibida na página


Caso de teste 03 - Pesquisa de um Produto
    [Documentation]   Esse teste verifica a busca de um produto.
    [Tags]           busca_produtos  lista_busca 
    Dado que estou na home page da Amazon.com.br
    Quando pesquisar pelo produto "Bola de basquete"
    E clicar no botão de pesquisa
    Então o produto "Bola De Basquete De Borracha Medida Oficial Nº 7 Tamanho Padrão A Partir De 3 Anos Bola De Basquetball Para Quadra Esportes Qualidade PREMIUM SYANG" deve ser mostrado na página