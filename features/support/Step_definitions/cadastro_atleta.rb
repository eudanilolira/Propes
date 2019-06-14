Given("Eu estou na pagina inicial") do
end

Given("Clico no botão Cadastrar") do
    click_button('cadastrar')
end

Then("Eu vou para a pagina de de selação de cadastro") do
  
end

When("Eu clico no botão Atleta") do
  click_button('atleta')
end

When("for para a pagina Cadastro_Atleta") do
  
end

When("Eu preencher o formulário com Nome, Email, CPF, Data de Nascimento,Idade, Genero,Estado Civil,Grau de Escolaridade, Profissão, Endereço , Cidade, Bairo, Estado, CEP, Telefone, Celular,Modalidade,Posição,MSD,MID,Fumante,Alcoolico,Sah,Diabetes,Cardio Deseases,Pratica Exercicios,Fami Alcoholism,Fami Sah,Fami Diabetes,Fami Cardio") do
   fill_in('Nome', :with => 'John')
   fill_in('Email', :with => 'John')
   fill_in('CPF', :with => 'John')
   fill_in('data de nascimento', :with => 'John')
   fill_in('Idade', :with => 'John')
   fill_in('Genero', :with => 'John')
   fill_in('Estado Civil', :with => 'John')
   fill_in('gradu de escolaridade', :with => 'John')
   fill_in('Profissão', :with => 'John')
   fill_in('Endereço', :with => 'John')
   fill_in('Cidade', :with => 'John')
   fill_in('bairro', :with => 'John')
   fill_in('estado', :with => 'John')
   fill_in('CEP', :with => 'John')
   fill_in('Telefone', :with => 'John')
   fill_in('Celular', :with => 'John') 
   fill_in('Posição', :with => 'John')
   fill_in('MSD', :with => 'John')
   fill_in('MID', :with => 'John')
   fill_in('Fumante', :with => 'John')
   fill_in('Alcoolico', :with => 'John')
   fill_in('Sah', :with => 'John')
   fill_in('Diabetis', :with => 'John')
   fill_in('Cardio Deseases', :with => 'John')
   fill_in('Pratica Exercicios ', :with => 'John')
   fill_in('Fami Alcoholism ', :with => 'John')
   fill_in('Fami Sah', :with => 'John')
   fill_in('Fami Diabetes', :with => 'John')
   fill_in('Fami Cardio', :with => 'John')
end

When("clicar no botão Cadastrar") do
  click_button('cadastrar')
end

Then("a mensagem {string} será exibida") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
