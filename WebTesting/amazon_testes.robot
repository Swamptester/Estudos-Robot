
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
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
      Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

Caso de teste 02 - Categoria "Computadores e Informática"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Computadores e informática
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia"
      Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br" 
      Verificar se aparece a categoria "Computadores e Informática"


Caso de teste 03 - Categoria "Celulares e Comunicação"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Celulares e Comunicação
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
      Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "Celulares e Comunicação"

Caso de teste 03 - Categoria "TV, Áudio e Cinema em Casa"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria TV e Cinema em Casa
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
      Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "TV, Áudio e Cinema em Casa"

Caso de teste 04 - Categoria "Áudio e Vídeo Portáteis"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Áudio e video portáteis
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"   
      Verificar se aparece a frase "Eletrônicos e Tecnologia"  
      Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"  
      Verificar se aparece a categoria "Áudio e Vídeo Portáteis"


Caso de teste 05 - Categoria "GPS e Acessórios"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria GPS e Acessórios
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos" 
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"      
      Verificar se aparece a categoria "GPS e Acessórios"

Caso de teste 06 - Categoria "Câmeras e Foto"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Câmeras e Foto
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "Câmeras e Foto"

  
Caso de teste 07 - Categoria "Tablets"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Tablets
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "Tablets"


Caso de teste 08 - Categoria "Eletrônicos para Carros e Veículos"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Eletrônicos para Carros e Veículos
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "Eletrônicos para Carros e Veículos"


Caso de teste 09 - Categoria "Baterias e Carregadores Domésticos"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Baterias e Carregadores Domésticos
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "Baterias e Carregadores Domésticos"


Caso de teste 10 - Categoria "Sistema de Som e Hi-Fi para Casa"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Sistema de Som e Hi-Fi para Casa
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "Sistema de Som e Hi-Fi para Casa"


Caso de teste 11 - Categoria "Auscultadores, Auriculares e Acessórios"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria Auscultadores, Auriculares e Acessórios
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "Auscultadores, Auriculares e Acessórios"


Caso de teste 12 - Categoria "e-Readers e Acessórios"
    [documentation]  esse teste acessa o menu Eletrônicos do site amazon.com.br
    ...              e verifica a categoria e-Readers e Acessórios
    [tags]          Menus  categorias
      Acessar a home page do site Amazon.com.br
      Verificar se o título da página fica "Amazon.com.br | Tudo pra você, de A a Z."
      Entrar no menu "Eletrônicos"
      Verificar se aparece a frase "Eletrônicos e Tecnologia" 
       Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
      Verificar se aparece a categoria "e-Readers e Acessórios"




   
    

# Caso de teste 02 - Pesquisa de um Produto
#     [Documentation]   Esse teste verifica a busca de um produto.
#     [Tags]           busca_produtos  lista_busca 
#     Acessar a home page do site Amazon.com.br
#     Digitar o nome de produto "Bola de basquete" no campo de Pesquisa
#     Clicar no botão de Pesquisa
#     Verificar o resultado da pesquisa se está listando o produto "Bola De Basquete De Borracha Medida Oficial Nº 7 Tamanho Padrão A Partir De 3 Anos Bola De Basquetball Para Quadra Esportes Qualidade PREMIUM SYANG"