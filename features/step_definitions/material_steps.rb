Given("Eu abro a pagina inicial de cadastro de materiais") do
  visit '/materials/new'
  expect(page).to have_content('New Material')
end

When("Eu cadastro um material com o nome {string}, valor {string}, tipo {string}, cor {string} e origem {string}") do |nome, valor, tipo, cor, origem|
  fill_in 'material[nome]', with:nome
  fill_in 'material[valor]', with:valor
  fill_in 'material[tipo]', with:tipo
  fill_in 'material[cor]', with:cor
  fill_in 'material[origem]', with:origem
  click_button 'Create Material'
end

Then("Eu vejo uma mensagem de confirmacao informando que o material com o nome {string} foi cadastrado com sucesso") do |nome|
  expect(page).to have_content(nome)
end

Given("Eu abro a pagina de informacoes dos materiais") do
  visit '/materials'
  expect(page).to have_content('Materials')
end

When("Eu seleciono a opcao de remover o material com nome {string}") do |nome|
  click_link "delete-#{nome}"
end

Then("Eu vejo uma mensagem informando que o material com o nome {string} foi removido") do |nome|
  expect(page).to have_content(nome)end

When("Eu seleciono o material com nome {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("Eu sou direcionado para uma pagina que mostra todos os dados do material de nome {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("Eu seleciono a opcao de editar o material com nome {string}") do |nome|
  click_link "editar-#{nome}"
end

When("Eu edito o nome do material {string} para {string}") do |string, nome|
  fill_in 'material[nome]', with:nome
  click_button 'Update Material'
end

Then("Eu vejo uma mensagem informando que o material com o nome {string} foi editado com sucesso") do |nome|
  expect(page).to have_content(nome)
end

Then("Eu vejo uma mensagem informando erro no cadastro do material com o nome {string}") do |string|
  expect(page).to have_content('error')
end

When("Eu seleciono a opcao de editar o material com nome {string} e valor {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

When("Eu altero o campo nome para {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("Eu clico em salvar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("Eu vejo uma mensagem informando erro ao salvar as alteracoes do material com o nome {string}") do |nome|
  pending # Write code here that turns the phrase above into concrete actions
end

When("Eu altero o campo de valor para {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end


And("existe um material com o nome {string}, valor {string}, tipo {string}, cor {string} e origem {string}") do |nome, valor, tipo, cor, origem|
  caminhoAntigo = URI.parse(current_url)
  visit "/materials/new"
  fill_in 'material[nome]', with:nome
  fill_in 'material[valor]', with:valor
  fill_in 'material[tipo]', with:tipo
  fill_in 'material[cor]', with:cor
  fill_in 'material[origem]', with:origem
  click_button 'Create Material'
  visit caminhoAntigo
end