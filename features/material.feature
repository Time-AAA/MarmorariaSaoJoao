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
