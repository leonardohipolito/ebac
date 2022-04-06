#language: pt
#encoding: utf-8

Funcionalidade: Configurar Produto.
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Esquema do Cenário: Adicionar produto ao carrinho.

Dado Que eu tenha entrado na página do Produto.
Quando Eu selecionar a "<cor>".
  E o tamanho "<tamanho>".
  E a quantidade "<quantidade>".
Então deve "<resultado>" produtos ao carrinho.

Exemplos:
| cenario | cor    | tamanho | quantidade | resultado     |  
| 1       | Blue   | XS      | 9          | adicionar     |  
| 2       | Orange | XS      | 10         | adicionar     |  
| 3       | Red    | XS      | 11         | não adicionar |  




Funcionalidade: Limpar formulário.
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E quando clicar no botão "limpar" deve voltar ao estado original
Para preencher novamente com outras opções

Cenário: Limpar opções do Produto.
Dado Que eu tenha entrado na página do Produto
Quando Que selecionei a cor "Blue"
E o tamanho "M"
E a quantidade "1"
E clicar no botão "limpar".
Então deve voltar as opões para o estado original.
