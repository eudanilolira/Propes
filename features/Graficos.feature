# language: en

Feature: Visulizar graficos
Para visualizar resltados
Como avaliador
Quero ver os resultados em formato de gráficos


  Scenario: visualização de graficos
    Given estou no menu dos atletas
    When eu clico em um atleta
    Then vou para o perfil do atleta selecionado
      And 