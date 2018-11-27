Feature: CRUD Funcionario
    As a usuario do sistema da marmoraria
    I want to adicionar, remover, ver e editar um funcionario
    So that eu possa melhorar a administracao dos funcionarios da marmoraria

    # 1)

    Scenario: cadastrar funcionario com sucesso
    Given Eu abro a pagina inicial de cadastro de funcionarios
    When Eu cadastro um funcionario com o nome "Pedro Luis", CPF “123.355.254-82”, rua “Afonso de Sa”, numero “10”, CEP “55740-000”, cidade “Garanhuns”, UF ”PE”, telefone de contato “87 9 98658852” e salario “1000”
    Then Eu vejo uma mensagem de confirmacao informando que o funcionario com o nome “Pedro Luis” foi cadastrado com sucesso

    # 2)

    Scenario: remover funcionario com sucesso
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de remover o funcionario com nome “Pedro Luis” e CPF “123.355.254-82”
    Then Eu vejo uma mensagem informando que o funcionario com o nome "Pedro Luis" foi removido

    # 3)

    Scenario: ver dados do funcionario
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono o funcionario com nome “Pedro Luis” e CPF “123.355.254-82”
    Then Eu sou direcionado para uma pagina que mostra todos os dados do funcionario de nome "Pedro Luis"

    # 4)

    Scenario: editar nome do funcionario com sucesso
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de editar o funcionario com nome “Pedro Luis” e CPF “123.355.254-82”
    And Eu edito o nome do funcionario “Pedro Luis” para “Luis Pedro”
    Then Eu vejo uma mensagem informando que o funcionario com o nome “Pedro Luis” foi editado com sucesso

    # 5)

    Scenario: cadastrar funcionario com nome menor que cinco caracretes
    Given Eu abro a pagina inicial de cadastro de funcionarios
    When Eu cadastro um funcionario com o nome "Luis", CPF “123.355.254-82”, rua “Afonso de Sa”, numero “10”, CEP “55740-000”, cidade “Garanhuns”, UF ”PE”, telefone de contato “87 9 98658852” e salario “1000”
    Then Eu vejo uma mensagem informando erro no cadastro do funcionario com o nome “Luis”

    # 6)

    Scenario: cadastrar funcionario com caracteres numericos no nome
    Given Eu abro a pagina inicial de cadastro de funcionarios
    When Eu cadastro um funcionario com o nome "Pedro Luis 1", CPF “123.355.254-82”, rua “Afonso de Sa”, numero “10”, CEP “55740-000”, cidade “Garanhuns”, UF ”PE”, telefone de contato “87 9 98658852” e salario “1000”
    Then Eu vejo uma mensagem informando erro no cadastro do funcionario com o nome “Pedro Luis 1”

    # 7)

    Scenario: cadastrar funcionario com nome vazio
    Given Eu abro a pagina inicial de cadastro de funcionarios
    When Eu cadastro um funcionario com o nome "", CPF “123.355.254-82”, rua “Afonso de Sa”, numero “10”, CEP “55740-000”, cidade “Garanhuns”, UF ”PE”, telefone de contato “87 9 98658852” e salario “1000”
    Then Eu vejo uma mensagem informando erro no cadastro do funcionario com o nome “”

    # 8)

    Scenario: cadastrar funcionario com CPF invalido
    Given Eu abro a pagina inicial de cadastro de funcionarios
    When Eu cadastro um funcionario com o nome "Pedro Luis", CPF “111.111.111-11”, rua “Afonso de Sa”, numero “10”, CEP “55740-000”, cidade “Garanhuns”, UF ”PE” e salario “1000”
    Then Eu vejo uma mensagem informando erro no cadastro do funcionario com o nome “Pedro Luis”

    # 9)

    Scenario: cadastrar funcionario com CPF vazio
    Given Eu abro a pagina inicial de cadastro de funcionarios
    When Eu cadastro um funcionario com o nome "Pedro Luis", CPF “”, rua “Afonso de Sa”, numero “10”, CEP “55740-000”, cidade “Garanhuns”, UF ”PE” e salario “1000”
    Then Eu vejo uma mensagem informando erro no cadastro do funcionario com o nome “Pedro Luis”

    # 10)

    Scenario: editar funcionario com nome maior que duzentos caracteres
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de editar o funcionario com nome “Pedro Luis” e CPF “123.355.254-82”
    And Eu altero o campo nome para “Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula Leocadio Miguel Gabriel Rafael Gonzaga Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do funcionario com o nome “Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula Leocadio Miguel Gabriel Rafael Gonzaga Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula”

    # 11)

    Scenario: editar funcionario com nome menor que cinco caracretes
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de editar o funcionario com nome “Pedro Luis” e CPF “123.355.254-82”
    And Eu altero o campo nome para “Luis”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do funcionario com o nome “Pedro Luis”


    # 12)

    Scenario: editar funcionario com com caracteres numericos no nome
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de editar o funcionario com nome “Pedro Luis” e CPF “123.355.254-82”
    And Eu altero o campo nome para “Pedro Luis 1”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do funcionario com o nome “Pedro Luis 1”

    # 13)

    Scenario: editar funcionario com com nome vazio
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de editar o funcionario com nome “Pedro Luiz” e CPF “123.355.254-82”
    And Eu altero o campo nome para “”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do funcionario com o nome “”

    # 14)

    Scenario: editar funcionario com com CPF invalido
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de editar o funcionario com nome “Pedro Luiz” e CPF  “123.355.254-82”
    And Eu altero o campo de CPF para “111.111.111-11”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do funcionario com o nome “Pedro Luis”

    # 15)

    Scenario: editar funcionario com com CPF vazio
    Given Eu abro a pagina de informacoes dos funcionarios
    When Eu seleciono a opcao de editar o funcionario com nome “Pedro Luiz” e CPF “123.355.254-82”
    And Eu altero o campo de CPF para “”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do funcionario com o nome “Pedro Luis”
