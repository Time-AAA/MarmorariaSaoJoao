Given("Eu abro a pagina de realizacao de vendas") do
  visit '/vendas/new'
  expect(page).to have_content('New Venda')
end

Given("Existe um cliente com o nome {string}, CPF {string}, rua {string}, numero {string}, CEP {string}, cidade {string}, UF {string} e telefone de contato {string}, produto com nome {string} alem de um material com o nome {string}, valor {string}, tipo {string}, cor {string} e origem {string}") do |nomeCliente, cpf, rua, numero, cep, cidade, uf, telefone, nomeProduto, nomeMaterial, valor, tipo, cor, origem|

  caminhoAntigo = URI.parse(current_url)
  visit '/clientes/new'
  fill_in 'cliente[nome]', with: nomeCliente
  fill_in 'cliente[cpf]', with: cpf
  fill_in 'cliente[rua]', with: rua
  fill_in 'cliente[numero]', with: numero
  fill_in 'cliente[cep]', with: cep
  fill_in 'cliente[cidade]', with: cidade
  fill_in 'cliente[estado]', with: uf
  fill_in 'cliente[telefone]', with: telefone
  click_button 'Create Cliente'
  visit caminhoAntigo

  caminhoAntigo = URI.parse(current_url)
  visit '/produtos/new'
  fill_in 'produto[nome]', with: nomeProduto
  click_button 'Create Produto'
  visit caminhoAntigo

  caminhoAntigo = URI.parse(current_url)
  visit '/materials/new'
  fill_in 'material[nome]', with: nomeMaterial
  fill_in 'material[valor]', with: valor
  fill_in 'material[tipo]', with: tipo
  fill_in 'material[cor]', with: cor
  fill_in 'material[origem]', with: origem
  click_button 'Create Material'
  visit caminhoAntigo

end

When("Eu preencho os campos relacionados a venda com o produto {string}, material com nome {string}, valor da venda {string}, valor da instalacao do produto {string} e cliente com nome {string}") do |produto, material, valor, instalacao, cliente|

  select produto, :from => "venda[produto_id]"

  select material, :from => "venda[material_id]"
  fill_in 'venda[valorVenda]', with: valor
  fill_in 'venda[valorInstalação]', with: instalacao

  select cliente, :from => "venda[cliente_id]"

end

When("Eu clico em realizar venda") do
  click_button 'Create Venda'
end

Then("Eu vejo uma mensagem de confirmacao informando que a venda foi realizada com sucesso") do
  expect(page).to have_content('Venda was Successfully')end

When("Eu clico em cancelar") do
  click_link 'Voltar'
end

Then("Eu volto para a pagina de realizacao de vendas") do
  expect(page).to have_content('Venda')end

Then("Eu vejo uma mensagem de erro") do
  expect(page).to have_content('error')
end

Given("Existe um produto com nome {string} alem de um material com o nome {string}, valor {string}, tipo {string}, cor {string} e origem {string}") do |produto, material, valor, instalacao, cliente|

  select produto, :from => "venda[produto_id]"

  select material, :from => "venda[material_id]"
  fill_in 'venda[valorVenda]', with: valor
  fill_in 'venda[valorInstalação]', with: instalacao

  select cliente, :from => "venda[cliente_id]"
end