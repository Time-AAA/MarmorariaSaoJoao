Feature: CRUD Material
    As a usuario do sistema da marmoraria
    I want to adicionar, remover, ver e editar um material
    So that eu possa melhorar a administracao dos materiais da marmoraria

    # 1)

    Scenario: cadastrar material com sucesso
    Given Eu abro a pagina inicial de cadastro de materiais
    When Eu cadastro um material com o nome "Marmore Resinado", valor “20,00”, tipo “Marmore”, cor “Rosa” e origem “Nacional”
    Then Eu vejo uma mensagem de confirmacao informando que o material com o nome “Marmore Resinado” foi cadastrado com sucesso

    # 2)

    Scenario: remover material com sucesso
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de remover o material com nome “Marmore Resinado”
    Then Eu vejo uma mensagem informando que o material com o nome "Marmore Resinado" foi removido

    # 3)

    Scenario: ver dados do material
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono o material com nome “Marmore Resinado”
    Then Eu sou direcionado para uma pagina que mostra todos os dados do material de nome "Marmore Resinado"

    # 4)

    Scenario: editar nome do material com sucesso
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de editar o material com nome “Marmore Resinado”
    And Eu edito o nome do material “Marmore Resinado” para “Marmore Bruto”
    Then Eu vejo uma mensagem informando que o material com o nome “Marmore Resinado” foi editado com sucesso

    # 5)

    Scenario: cadastrar material com nome menor que tres caracretes
    Given Eu abro a pagina inicial de cadastro de materiais
    When Eu cadastro um material com o nome "Pd", valor “20,00”, tipo “Marmore”, cor “Rosa” e origem “Nacional”
    Then Eu vejo uma mensagem informando erro no cadastro do material com o nome “Pd”

    # 6)

    Scenario: cadastrar material apenas com caracteres numericos no nome
    Given Eu abro a pagina inicial de cadastro de materiais
    When Eu cadastro um material com o nome "123", valor “20,00”, tipo “Marmore”, cor “Rosa” e origem “Nacional”
    Then Eu vejo uma mensagem informando erro no cadastro do material com o nome “123”

    # 7)

    Scenario: cadastrar material com nome vazio
    Given Eu abro a pagina inicial de cadastro de materiais
    When Eu cadastro um material com o nome "", valor “20,00”, tipo “Marmore”, cor “Rosa” e origem “Nacional”
    Then Eu vejo uma mensagem informando erro no cadastro do material com o nome “”

    # 8)

    Scenario: cadastrar material com valor negativo
    Given Eu abro a pagina inicial de cadastro de materiais
    When Eu cadastro um material com o nome "Marmore Resinado", valor “-20,00”, tipo “Marmore”, cor “Rosa” e origem “Nacional
    Then Eu vejo uma mensagem informando erro no cadastro do material com o nome “Marmore Resinado”

    # 9)

    Scenario: cadastrar material com valor vazio
    Given Eu abro a pagina inicial de cadastro de materiais
    When Eu cadastro um material com o nome "Marmore Resinado", valor “”, tipo “Marmore”, cor “Rosa” e origem “Nacional”
    Then Eu vejo uma mensagem informando erro no cadastro do material com o nome “Marmore Resinado”

    # 10)

    Scenario: editar material com nome maior que cinquenta caracteres
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de editar o material com nome “Marmore Resinado” e valor “20,00”
    And Eu altero o campo nome para “Marmore Resinado Bruto Resinado Bruto Resinado Bruto”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do material com o nome “Marmore Resinado”

    #11)

    Scenario: editar material com nome menor que tres caracretes
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de editar o material com nome “Marmore Resinado” e valor “20,00”
    And Eu altero o campo nome para “Pd”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do material com o nome “Marmore Resinado”

    #12)

    Scenario: editar material apenas com caracteres numericos no nome
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de editar o material com nome “Marmore Resinado” e valor “20,00”
    And Eu altero o campo nome para “123”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro no cadastro do material com o nome “Marmore Resinado”

    #13)

    Scenario: editar material com com nome vazio
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de editar o material com nome “Marmore Resinado” e valor “20,00”
    And Eu altero o campo nome para “”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do material com o nome “Marmore Resinado”

    #14)

    Scenario: editar material com valor negativo
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de editar o material com nome “Marmore Resinado” e valor “20,00”
    And Eu altero o campo de valor para “-20,00”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do material com o nome “Marmore Resinado”

    #15)

    Scenario: editar material com com valor vazio
    Given Eu abro a pagina de informacoes dos materiais
    When Eu seleciono a opcao de editar o material com nome “Marmore Resinado” e valor “20,00”
    And Eu altero o campo de valor para “”
    And Eu clico em salvar
    Then Eu vejo uma mensagem informando erro ao salvar as alteracoes do material com o nome “Marmore Resinado”
