#language: pt
#encoding: utf-8

Funcionalidade: Tela de cadastro no Checkout.
Contexto:
Dado Que acessei a pádina de checkout.

Cenário: Falha quando não insere dados obrigatórios.
Quando Preencho o "Nome".
  E o "Sobrenome".
  E o "Email".
Então deve aparecer uma mensagem de erro de validação, solicitando o restante dos campos obrigatórios.

Cenário: Falha ao inserir e-mail em formato inválido.
Quando Preencho o "Email" com "email_gmail.com".
Então deve aparecer uma mensagem de erro de validação, solicitando que seja inserido um e-mail correto.

Cenário: Falha tentar cadastro com campos em branco.
Quando Envio o formulário vazio.
Então deve aparecer uma mensagem de alerta solicitando o preenchimento do formulário-.