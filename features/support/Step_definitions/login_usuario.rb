
Given("eu estou na página de login") do

end

When("eu preencho o campo email e senha") do
  fill_in('email', :with => 'example@gmail.com')
  fill_in('senha', :with => 'exemplosenha')
end

When("aperto Entrar") do
  pclick_button('entrar')
end

Then("o aplicativo deverá me redireciona para o meu perfil de usuário") do

end
