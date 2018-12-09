Feature: CRUD Fornecedor
  As an usuario do sistema da marmoraria
  I want to adicionar, remover, ver e editar um fornecedor
  So that eu possa melhorar a administracao dos fornecedores da marmoraria

    #1)

  Scenario: cadastrar fornecedor com sucesso
    Given Eu abro a pagina inicial de cadastro de fornecedor
    When Eu cadastro um fornecedor com o nome "Pedro Luis", CNPJ "94.773.467/0001-18", email "pedro@gmail.com" e telefone de contato "87 9 98658852"
    Then Eu vejo uma mensagem de confirmacao informando que o fornecedor com o nome "Pedro Luis" foi cadastrado com sucesso

    #2)

  Scenario: remover fornecedor com sucesso
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono a opcao de remover o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    Then Eu vejo uma mensagem informando que o cliente com o nome "Pedro Luis" foi removido

    #3)

  Scenario: ver dados do fornecedor
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    Then Eu sou direcionado para uma pagina que mostra todos os dados do fornecedor de nome "Pedro Luis"

    #4)

  Scenario: editar fornecedor com sucesso
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono a opcao de editar o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    And Eu edito o nome do fornecedor "Pedro Luis" para "Luis Pedro"
    Then Eu vejo uma mensagem informando que o fornecedor com o nome "Pedro Luis" foi editado com sucesso

    #5)

  Scenario: cadastrar fornecedor com nome menor que cinco caracretes
    Given Eu abro a pagina inicial de cadastro de fornecedor
    When Eu cadastro um fornecedor com o nome "Luis", CNPJ "94.773.467/0001-18", email "pedro@gmail.com" e telefone de contato "87 9 98658852"
    Then Eu vejo uma mensagem informando erro no cadastro do cliente com o nome "Luis"

    #6)

  Scenario: cadastrar fornecedor com caracteres numericos no nome
    Given Eu abro a pagina inicial de cadastro de fornecedor
    When Eu cadastro um fornecedor com o nome "Pedro Luis 1", CNPJ "94.773.467/0001-18", email "pedro@gmail.com" e telefone de contato "87 9 98658852"
    Then Eu vejo uma mensagem informando erro no cadastro do fornecedor com o nome "Pedro Luis 1"

    #7)

  Scenario: cadastrar fornecedor com nome vazio
    Given Eu abro a pagina inicial de cadastro de fornecedor
    When Eu cadastro um fornecedor com o nome "", CNPJ "94.773.467/0001-18", email "pedro@gmail.com" e telefone de contato "87 9 98658852"
    Then Eu vejo uma mensagem informando erro no cadastro do fornecedor com o nome ""

    #8)

  Scenario: cadastrar fornecedor com CNPJ invalido
    Given Eu abro a pagina inicial de cadastro de fornecedor
    When Eu cadastro um fornecedor com o nome "Pedro Luis", CNPJ "94.73.467/0001-18", email "pedro@gmail.com" e telefone de contato "87 9 98658852"
    Then Eu vejo uma mensagem informando erro no cadastro do fornecedor com o nome "Pedro Luis"

    #9)

  Scenario: cadastrar fornecedor com CNPJ vazio
    Given Eu abro a pagina inicial de cadastro de fornecedor
    When Eu cadastro um fornecedor com o nome "Pedro Luis", CNPJ "", email "pedro@gmail.com" e telefone de contato "87 9 98658852"
    Then Eu vejo uma mensagem informando erro no cadastro do fornecedor com o nome "Pedro Luis"

    #10)

  Scenario: editar fornecedor com nome maior que duzentos caracteres
    Given Eu abro a pagina de informacoes dos fornecedores
    When Eu seleciono a opcao de editar o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    And Eu altero o campo nome para "Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula Leocadio Miguel Gabriel Rafael Gonzaga Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula"
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do cliente com o nome "Pedro Luis"

    #11)

  Scenario: editar fornecedor com nome menor que cinco caracretes
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono a opcao de editar o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    And Eu altero o campo nome para "Luis"
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do fornecedor com o nome "Luis"

    #12)

  Scenario: editar fornecedor com com caracteres numericos no nome
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono a opcao de editar o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    And Eu altero o campo nome para "Pedro Luis 1"
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do fornecedor com o nome "Pedro Luis 1"

    #13)

  Scenario: editar fornecedor com com nome vazio
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono a opcao de editar o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    And Eu altero o campo nome para ""
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do fornecedor com o nome ""

    #14)

  Scenario: editar fornecedor com com CNPJ invalido
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono a opcao de editar o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    And Eu altero o campo de CNPJ para "00.00.000/0000-00"
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do fornecedor com o nome "Pedro Luis"

    #15)

  Scenario: editar fornecedor com com CNPJ vazio
    Given Eu abro a pagina de informacoes dos fornecedor
    When Eu seleciono a opcao de editar o fornecedor com nome "Pedro Luis" e CNPJ "94.773.467/0001-18"
    And Eu altero o campo de CNPJ para ""
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do fornecedor com o nome "Pedro Luis"
