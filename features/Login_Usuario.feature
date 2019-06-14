# language: en

Feature: Realizar login
Para ter acesso a plataforma
Como usuario
Quero realizar o login

  Scenario: Login realizado com sucesso
    Given eu estou na página de login
    When eu preencho o campo email e senha
        And aperto Entrar
    Then o aplicativo deverá me redireciona para o meu perfil de usuário

    