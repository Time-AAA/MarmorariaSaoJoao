Feature: Venda
  As an usuario logado do sistema da marmoraria
  I want to realizar uma venda, cancelar uma possível venda, adicionar produduto a venda e retirar produto da venda
  So that eu possa melhorar o controle sobre as vendas do estabelecimento

    # 1)

  Scenario: realizar venda com sucesso
    Given Eu abro a pagina de realizacao de vendas
    And Existe um cliente com o nome "Pedro Luis", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852", produto com nome "Pia" alem de um material com o nome "Marmore Resinado", valor "20.00", tipo "Marmore", cor "Rosa" e origem "Nacional"
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Marmore Resinado", valor da venda "500.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em realizar venda
    Then Eu vejo uma mensagem de confirmacao informando que a venda foi realizada com sucesso

    # 2)

  Scenario: cancelar possivel venda
    Given Eu abro a pagina de realizacao de vendas
    And Existe um cliente com o nome "Pedro Luis", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852", produto com nome "Pia" alem de um material com o nome "Marmore Resinado", valor "20.00", tipo "Marmore", cor "Rosa" e origem "Nacional"
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Marmore Resinado", valor da venda "500.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em cancelar
    Then Eu volto para a pagina de realizacao de vendas

    # 3)

  Scenario: realizar venda com valor negativo
    Given Eu abro a pagina de realizacao de vendas
    And Existe um cliente com o nome "Pedro Luis", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852", produto com nome "Pia" alem de um material com o nome "Marmore Resinado", valor "20.00", tipo "Marmore", cor "Rosa" e origem "Nacional"
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Marmore Resinado", valor da venda "-200.00", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em realizar venda
    Then Eu vejo uma mensagem de erro

    # 4)

  Scenario: realizar venda com valor de instalacao negativo
    And Existe um cliente com o nome "Pedro Luis", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852", produto com nome "Pia" alem de um material com o nome "Marmore Resinado", valor "20.00", tipo "Marmore", cor "Rosa" e origem "Nacional"
    And Existe um produto com nome "Pia" alem de um material com o nome "Marmore Resinado", valor "20.00", tipo "Marmore", cor "Rosa" e origem "Nacional"
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Marmore Resinado", valor da venda "500.00", valor da instalacao do produto "-10.00" e cliente com nome "Pedro Luis"
    And Eu clico em realizar venda
    Then Eu vejo uma mensagem de erro

    # 5)

  Scenario: realizar venda com valor vazio
    Given Eu abro a pagina de realizacao de vendas
    And Existe um cliente com o nome "Pedro Luis", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852", produto com nome "Pia" alem de um material com o nome "Marmore Resinado", valor "20.00", tipo "Marmore", cor "Rosa" e origem "Nacional"
    When Eu preencho os campos relacionados a venda com o produto "Pia", material com nome "Marmore Resinado", valor da venda "", valor da instalacao do produto "100.00" e cliente com nome "Pedro Luis"
    And Eu clico em realizar venda
    Then Eu vejo uma mensagem de erro