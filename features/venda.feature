Feature: Venda
  As an usuario logado do sistema da marmoraria
  I want to realizar uma venda, cancelar uma possível venda, adicionar produduto a venda e retirar produto da venda
  So that eu possa melhorar o controle sobre as vendas do estabelecimento

    # 1)

  Scenario: realizar venda com sucesso
    Given Eu abro a pagina de realizacao de vendas estando logado
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Granito", valor do produto "500.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em realizar venda
    Then Eu vejo uma mensagem de confirmacao informando que a venda foi realizada com sucesso

    # 2)

  Scenario: cancelar possivel venda
    Given Eu abro a pagina de realizacao de vendas estando logado
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Granito", valor do produto "500.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em cancelar
    Then Eu volto para a pagina de realizacao de vendas

    # 3)

  Scenario: adicionar mais produtos a venda
    Given Eu abro a pagina de realizacao de vendas estando logado
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Granito", valor do produto "500.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em adicionar mais produtos
    And Eu preencho os campos de produto "Mesa", material com nome "Marmore", valor do produto "500.00" e valor da instalacao do produto "100.00"
    And Eu clico em realizar venda
    Then Eu vejo uma mensagem de confirmacao informando que a venda foi realizada com sucesso

    # 4)

  Scenario: remover produto da venda
    Given Eu abro a pagina de realizacao de vendas estando logado
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Granito", valor do produto "500.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em remover o produto com nome "Pia"
    Then Eu vejo que o produto foi removido da venda

    # 5)

  Scenario: realizar venda sem sucesso
    Given Eu abro a pagina de realizacao de vendas estando logado
    When Eu preencho os campos relacionados a venda com o produto "", material com nome "Granito", valor do produto "500.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em realizar venda
    Then Eu vejo uma mensagem de erro

