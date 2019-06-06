# language: en

Feature: Cadastro Atleta
  Para Consultar meus resultados
  Como atleta
  Quero me cadastrar no sistema
  
Scenario: Cadastro com Sucesso
  Given Eu estou na pagina inicial
  And Clico no botão Cadastrar
  Then Eu vou para a pagina de de selação de cadastro
  When Eu clico no botão Atleta
  And for para a pagina Cadastro_Atleta
  When Eu preencher o formulário com Nome, Email, CPF, Data de Nascimento,Idade, Genero,Estado Civil,Grau de Escolaridade, Profissão, Endereço , Cidade, Bairo, Estado, CEP, Telefone, Celular,Modalidade,Posição,MSD,MID,Fumante,Alcoolico,Sah,Diabetes,Cardio Deseases,Pratica Exercicios,Fami Alcoholism,Fami Sah,Fami Diabetes,Fami Cardio 
  And clicar no botão Cadastrar
  Then a mensagem "Usuário cadastrado com sucesso" será exibida
  
Scenario: Cadastro com Sucesso
  Given Eu estou na pagina inicial
  And Clico no botão Cadastrar
  Then Eu vou para a pagina de de selação de cadastro
  When Eu clico no botão Atleta
  And for para a pagina Cadastro_Atleta
  When Eu não preencher o formulário com as informações necessarias 
  And clicar no botão Cadastrar
  Then a mensagem "Ops Encontramos  erros" será exibida
