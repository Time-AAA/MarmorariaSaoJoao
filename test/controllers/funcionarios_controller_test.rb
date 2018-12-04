require 'test_helper'

class FuncionariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @funcionario = funcionarios(:one)
  end

  test "should get index" do
    get funcionarios_url
    assert_response :success
  end

  test "should get new" do
    get new_funcionario_url
    assert_response :success
  end

  test "should create funcionario" do
    assert_difference('Funcionario.count') do
      post funcionarios_url, params: { funcionario: { cep: @funcionario.cep, cidade: @funcionario.cidade, complemento: @funcionario.complemento, cpf: @funcionario.cpf, estado: @funcionario.estado, nome: @funcionario.nome, numero: @funcionario.numero, rua: @funcionario.rua, salario: @funcionario.salario, telefone: @funcionario.telefone } }
    end

    assert_redirected_to funcionario_url(Funcionario.last)
  end

  test "should show funcionario" do
    get funcionario_url(@funcionario)
    assert_response :success
  end

  test "should get edit" do
    get edit_funcionario_url(@funcionario)
    assert_response :success
  end

  test "should update funcionario" do
    patch funcionario_url(@funcionario), params: { funcionario: { cep: @funcionario.cep, cidade: @funcionario.cidade, complemento: @funcionario.complemento, cpf: @funcionario.cpf, estado: @funcionario.estado, nome: @funcionario.nome, numero: @funcionario.numero, rua: @funcionario.rua, salario: @funcionario.salario, telefone: @funcionario.telefone } }
    assert_redirected_to funcionario_url(@funcionario)
  end

  test "should destroy funcionario" do
    assert_difference('Funcionario.count', -1) do
      delete funcionario_url(@funcionario)
    end

    assert_redirected_to funcionarios_url
  end
end
