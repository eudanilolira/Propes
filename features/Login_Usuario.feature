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
    
  Scenario: Login com senha faltando/errada
    Given Estou na página de login
    When Preencho o campo Email com "leo@gmail.com"
        And não preencho o campo Senha com ""
        And aperto Entrar
    Then o sistema deverá me avisar que senha está incorreta
  
  Scenario: Login com Email faltando
    Given Estou na página de login
    When Preencho o campo Senha com "01234"
        And não preencho o campo Email com ""
        And aperto Entrar
    Then o sistema deverá me avisar que não coloquei o email

    