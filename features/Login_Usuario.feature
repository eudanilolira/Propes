# language: en

Feature: Realizar login
Para ter acesso a plataforma
Como usuario
Quero realizar o login

  Scenario: Login realizado com sucesso
    Given eu estou na página de login
    When eu preencho o "Email" com "leo@gmail.com"
        And eu preencho o "Senha" com "01234"
        And aperto Entrar
    Then o aplicativo deverá me redireciona para o meu perfil de usuário
    
  Scenario: Login com senha faltando
    Given Estou na página de login
    When Preencho o campo Email
        And não preencho o campo Senha
        And aperto Entrar
    Then o sistema deverá me avisar que não coloquei a senha
  
  Scenario: Login com Email faltando
    Given Estou na página de login
    When Preencho o campo Senha
        And não preencho o campo Email
        And aperto Entrar
    Then o sistema deverá me avisar que não coloquei o email

    