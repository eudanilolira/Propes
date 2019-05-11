Feature: test the user access in the plataform

As a system user
I want to do my login in many ways

Scenario: successful access - Login - Email
  Given  I'm in login module
  When I fill the fields email
    And I fill the password field
	  And click on the button "acessar minha conta"
  Then the app shall redirect me to Meu Perfil module

Scenario: Access with no password given - Login - Email
  Given  I'm in the login module
  When I fill the field name 
	  And I click on the button "acessar minha conta"
  Then the system shall show the message: "Ops! Você se esqueceu da senha. Favor preencher o campo senha"

Scenario: access with no name given - Login - Email
  Given  I'm in the login module
  When i fill the field password
	  And I click on the button "acessar minha conta"
  Then the system shall show the message: "Ops! Você se esqueceu do nome/e-email. Favor preencher o campo nome/e-email"

Scenario: access with wrong password or wrong user - Login - Email
  Given  I'm in the login module
  When I fill the field "nome" com "Leonardo Lima"
    And I fill the field "senha" com "11111111111"
	  And I click on the button "acessar minha conta"
  Then the system shall show the message: "Usuário e/ou Senha incorretos, favor verificar"
