Feature: CRUD Cliente
    As an usuario do sistema da marmoraria
    I want to adicionar, remover, ver e editar um cliente
    So that eu possa melhorar a administracao dos clientes da marmoraria

    # 1)

    Scenario: cadastrar cliente com sucesso
        Given Eu abro a pagina inicial de cadastro de clientes
        When Eu cadastro um cliente com o nome "Pedro Luis", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852"
        Then Eu vejo uma mensagem de confirmacao informando que o cliente com o nome "Pedro Luis" foi cadastrado com sucesso

    # 2)

    Scenario: remover cliente com sucesso
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de remover o cliente com nome "Pedro Luis" e CPF "123.355.254-82"
        Then Eu vejo uma mensagem informando que o cliente com o nome "Pedro Luis" foi removido

    # 3)

    Scenario: ver dados do cliente
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono o cliente com nome "Pedro Luis" e CPF "123.355.254-82"
        Then Eu sou direcionado para uma pagina que mostra todos os dados do cliente de nome "Pedro Luis"

    # 4)

    Scenario: editar nome do cliente com sucesso
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de editar o cliente com nome "Pedro Luis" e CPF "123.355.254-82"
        And Eu edito o nome do cliente "Pedro Luis" para "Luis Pedro"
        Then Eu vejo uma mensagem informando que o cliente com o nome "Pedro Luis" foi editado com sucesso

    # 5)

    Scenario: cadastrar cliente com nome menor que cinco caracretes
        Given Eu abro a pagina inicial de cadastro de clientes
        When Eu cadastro um cliente com o nome "Luis", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852"
        Then Eu vejo uma mensagem informando erro no cadastro do cliente com o nome "Luis"

    # 6)

    Scenario: cadastrar cliente com caracteres numericos no nome
        Given Eu abro a pagina inicial de cadastro de clientes
        When Eu cadastro um cliente com o nome "Pedro Luis 1", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852"
        Then Eu vejo uma mensagem informando erro no cadastro do cliente com o nome "Pedro Luis 1"

    # 7)

    Scenario: cadastrar cliente com nome vazio
        Given Eu abro a pagina inicial de cadastro de clientes
        When Eu cadastro um cliente com o nome "", CPF "123.355.254-82", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852"
        Then Eu vejo uma mensagem informando erro no cadastro do cliente com o nome ""

    # 8)

    Scenario: cadastrar cliente com CPF invalido
        Given Eu abro a pagina inicial de cadastro de clientes
        When Eu cadastro um cliente com o nome "Pedro Luis", CPF "111.111.111-11", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852"
        Then Eu vejo uma mensagem informando erro no cadastro do cliente com o nome "Pedro Luis"

    # 9)

    Scenario: cadastrar cliente com CPF vazio
        Given Eu abro a pagina inicial de cadastro de clientes
        When Eu cadastro um cliente com o nome "Pedro Luis", CPF "", rua "Afonso de Sa", numero "10", CEP "55740-000", cidade "Garanhuns", UF "PE" e telefone de contato "87 9 98658852"
        Then Eu vejo uma mensagem informando erro no cadastro do cliente com o nome "Pedro Luis"

    # 10)

    Scenario: editar cliente com nome maior que duzentos caracteres
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de editar o cliente com nome "Pedro Luis" e CPF "123.355.254-82"
        And Eu altero o campo nome para "Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula Leocadio Miguel Gabriel Rafael Gonzaga Pedro de Alcantara Joao Carlos Leopoldo Salvador Bibiano Francisco Xavier de Paula"
        And Eu clico em salvar
        Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do cliente com o nome "Pedro Luis"

    # 11)

    Scenario: editar cliente com nome menor que cinco caracretes
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de editar o cliente com nome "Pedro Luis" e CPF "123.355.254-82"
        And Eu altero o campo nome para "Luis"
        And Eu clico em salvar
        Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do cliente com o nome "Pedro Luis"

    # 12)

    Scenario: editar cliente com com caracteres numericos no nome
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de editar o cliente com nome "Pedro Luis" e CPF "123.355.254-82"
        And Eu altero o campo nome para "Pedro Luis 1"
        And Eu clico em salvar
        Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do cliente com o nome "Pedro Luis"

    # 13)

    Scenario: editar cliente com com nome vazio
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de editar o cliente com nome "Pedro Luiz" e CPF "123.355.254-82"
        And Eu altero o campo nome para ""
        And Eu clico em salvar
        Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do cliente com o nome "Pedro Luis"

    # 14)

    Scenario: editar cliente com com CPF invalido
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de editar o cliente com nome "Pedro Luiz" e CPF "123.355.254-82"
        And Eu altero o campo de CPF para "111.111.111-11"
        And Eu clico em salvar
        Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do cliente com o nome "Pedro Luis"

    # 15)

    Scenario: editar cliente com com CPF vazio
        Given Eu abro a pagina de informacoes dos clientes
        When Eu seleciono a opcao de editar o cliente com nome "Pedro Luiz" e CPF "123.355.254-82"
        And Eu altero o campo de CPF para ""
        And Eu clico em salvar
        Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do cliente com o nome "Pedro Luis"
