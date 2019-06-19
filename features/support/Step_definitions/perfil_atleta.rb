Given("Estou na tela principal do sistema") do
    visit (root_path) 
end

Given("eu clico no botão Meu Perfil") do
    click_button('Meu Perfil')
end

Then("Eu vou para a pagina de do meu perfil") do
   visit (athlete_path) 
end

