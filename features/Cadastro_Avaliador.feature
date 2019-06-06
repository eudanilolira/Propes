# language: en

Feature: Cadastro Avaliador
  Para realizar e consultar avaliações
  Como avaliador
  Quero me cadastrar no sistema

Scenario: Cadastro com Sucesso
  Given Eu estou na pagina inicial
  And Clico no botão Cadastrar
  Then Eu vou para a pagina de de selação de cadastro
  When Eu clico no botão Avaliador
  And for para a pagina Cadastro_Avaliador
  When Eu preencher o formulário com Nome, Email, CPF, Data de Nascimento, Genero, Profissão, Endereço , Cidade, Bairo, Estado, CEP, Telefone, Celular, Senha e Confirmação de Senha
  And clicar no botão Cadastrar
  Then a mensagem "Usuário cadastrado com sucesso" será exibida
  
Scenario: Cadastro com Sucesso
  Given Eu estou na pagina inicial
  And Clico no botão Cadastrar
  Then Eu vou para a pagina de de selação de cadastro
  When Eu clico no botão Avaliador
  And for para a pagina Cadastro_Avaliador
  When Eu não preencher o formulario com as informações necessarias
  And clicar no botão Cadastrar
  Then a mensagem "Ops Encontramos  erros" será exibida
