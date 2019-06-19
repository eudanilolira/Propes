Given("Eu estou na pagina inicial") do
    visit (root_path) 
end

Given("Clico no botão Cadastrar") do
    click_button('cadastrar')
end

Then("Eu vou para a pagina de de selação de cadastro") do
  visit (new_user_path)
end

When("Eu clico no botão Atleta") do
  click_button('atleta')
end

When("for para a pagina Cadastro_Atleta") do
  visit (new_athlete_path)
end

When("Eu preencher o formulário com Nome, Email, CPF, Data de Nascimento,Idade, Genero,Estado Civil,Grau de Escolaridade, Profissão, Endereço , Cidade, Bairo, Estado, CEP, Telefone, Celular,Modalidade,Posição,MSD,MID,Fumante,Alcoolico,Sah,Diabetes,Cardio Deseases,Pratica Exercicios,Fami Alcoholism,Fami Sah,Fami Diabetes,Fami Cardio") do
   fill_in('Nome', :with => 'John')
   fill_in('Email', :with => 'email@exmaple.com')
   fill_in('CPF', :with => '21547863259')
   fill_in('data de nascimento', :with => '28/01/1999')
   fill_in('Idade', :with => '20')
   fill_in('Genero', :with => 'Masculino')
   fill_in('Estado Civil', :with => 'Solteiro')
   fill_in('gradu de escolaridade', :with => 'Fundamental Completo')
   fill_in('Profissão', :with => '')
   fill_in('Endereço', :with => 'rua do exemplo')
   fill_in('Cidade', :with => 'Recife')
   fill_in('bairro', :with => 'Varzea')
   fill_in('estado', :with => 'PErnambuco')
   fill_in('CEP', :with => '50740520')
   fill_in('Telefone', :with => '81994582658')
   fill_in('Celular', :with => '81994582658') 
   fill_in('Posição', :with => '')
   fill_in('MSD', :with => 'Esquerdo')
   fill_in('MID', :with => 'Esquerdo')
   fill_in('Fumante', :with => 'não')
   fill_in('Alcoolico', :with => 'não')
   fill_in('Hipertensão arterial', :with => 'não')
   fill_in('Diabetes', :with => 'não')
   fill_in('Cardio Deseases', :with => 'não')
   fill_in('Pratica Exercicios ', :with => 'sim')
   fill_in('Alcoolismo na família  ', :with => 'não')
   fill_in('Hipertensão arterial na famíliah', :with => 'não')
   fill_in('Diabetes na família', :with => 'não')
   fill_in('Doenças cardio na família', :with => 'não')
end

When("clicar no botão Cadastrar") do
  click_button('cadastrar')
end

Then("a mensagem {string} será exibida") do |string|

end
