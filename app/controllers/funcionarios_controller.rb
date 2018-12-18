class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: %i[show edit update destroy]

  # GET /funcionarios
  # GET /funcionarios.json
  def index
    @funcionarios = Funcionario.all
  end

  # GET /funcionarios/1
  # GET /funcionarios/1.json
  def show; end

  # GET /funcionarios/new
  def new
    @funcionario = Funcionario.new
  end

  # GET /funcionarios/1/edit
  def edit; end

  # POST /funcionarios
  # POST /funcionarios.json
  def create
    @funcionario = Funcionario.new(funcionario_params)
    auxiliarCreateUpdate(@funcionario, @funcionario.save, 'cadastrado', :created, :new)
  end

  # PATCH/PUT /funcionarios/1
  # PATCH/PUT /funcionarios/1.json
  def update
    auxiliarCreateUpdate(@fornecedor, @fornecedor.update(fornecedor_params), 'atualizado', :ok, :edit)
  end

  # DELETE /funcionarios/1
  # DELETE /funcionarios/1.json
  def destroy
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to funcionarios_url, notice: 'Funcionario com nome ' + @funcionario.nome + ' foi removido com sucesso' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_funcionario
    @funcionario = Funcionario.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def funcionario_params
    params.require(:funcionario).permit(:nome, :cpf, :telefone, :salario, :rua, :numero, :complemento, :cep, :cidade, :estado)
  end
end
