Given("Eu estou na pagina inicial") do
    visit (root_path) 
end

Given("Clico no botão Cadastrar") do
    click_button('cadastrar')
end

Then("Eu vou para a pagina de de selação de cadastro") do
  visit (new_user_path)
end

When("Eu clico no botão avaliador") do
  click_button('avaliador')
end

When("for para a pagina Cadastro_Avaliador") do
  
end

When("Eu preencher o formulário com Nome, Email, CPF, Data de Nascimento,Idade, Genero, Profissão, Endereço , Cidade, Bairo, Estado, CEP, Telefone, Celular") do
   fill_in('Nome', :with => 'John')
   fill_in('Email', :with => 'example@gmail.com')
   fill_in('CPF', :with => '12584369512')
   fill_in('data de nascimento', :with => '28/01/1999')
   fill_in('Genero', :with => 'Masculino')
   fill_in('Profissão', :with => 'Fisioterapeuta')
   fill_in('Endereço', :with => 'Rua do exemplo')
   fill_in('Cidade', :with => 'Recife')
   fill_in('bairro', :with => 'Varzea')
   fill_in('estado', :with => 'Pernambuco')
   fill_in('CEP', :with => '50740520')
   fill_in('Telefone', :with => '81995587426')
   fill_in('Celular', :with => '81995587426')
   fill_in('Role', :with => 'John')
   fill_in('Senha', :with => 'senhaexample')
   fill_in('Confirmação senha', :with => 'senhaexample')
end

When("clicar no botão Cadastrar") do
  click_button('cadastrar')
end

Then("a mensagem {string} será exibida") do |string|

end
