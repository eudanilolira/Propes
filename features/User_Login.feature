Feature: Realizar login
Para ter acesso a plataforma
Como usuario
Quero realizar o login

  Scenario: Login realizado com sucesso
    Given eu estou na página de login
    When eu preencho o campo Email
        And eu preencho o campo Senha
        And aperto Entrar
    Then o aplicativo deverá me redireciona para o meu perfil de usuário
    