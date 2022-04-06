#language: pt
#encoding: utf-8


Funcionalidade: Login na Plataforma.
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que acessei a página de "login".

Cenário: Login válido.
Quando eu digitar o usuário "valido@teste.com"
  E a senha "valida@123".
Então deve redirecionar para a tela de "checkout".

Cenário: Login com email inválido.
Quando eu digitar o usuário "invalido@teste.com"
  E a senha "valida@123".
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos".

Cenário: Login com senha inválida.
Quando eu digitar o usuário "valido@teste.com"
  E a senha "invalida@123".
Então deve exibir a mensagem de alerta "Usuário ou senha inválidos".
