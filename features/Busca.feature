# language: en

Feature: Buscar Atletas
  Para avaliar atletas
  Como avaliador
  Gostaria de busca-los pelo nome/modalidade
  
  Scenario: Buscar atletas
    Given Estou na tela principal do sistema
    When eu clico no botão Todos os Atletas
    Then vou para a pagina de buscar
    When eu preencho o campo Pesquisar com o nome do atleta
        And Aperto procurar
    Then quero ver o atleta com o nome pesquisado