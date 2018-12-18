class FornecedorsController < ApplicationController
  before_action :set_fornecedor, only: %i[show edit update destroy]

  # GET /fornecedors
  # GET /fornecedors.json
  def index
    @fornecedors = Fornecedor.all
  end

  # GET /fornecedors/1
  # GET /fornecedors/1.json
  def show; end

  # GET /fornecedors/new
  def new
    @fornecedor = Fornecedor.new
  end

  # GET /fornecedors/1/edit
  def edit; end

  # POST /fornecedors
  # POST /fornecedors.json
  def create
    @fornecedor = Fornecedor.new(fornecedor_params)
    auxiliarCreateUpdate(@fornecedor, @fornecedor.save, 'cadastrado', :created, :new)
  end

  # PATCH/PUT /fornecedors/1
  # PATCH/PUT /fornecedors/1.json
  def update
    auxiliarCreateUpdate(@fornecedor, @fornecedor.update(fornecedor_params), 'atualizado', :ok, :edit)
  end

  # DELETE /fornecedors/1
  # DELETE /fornecedors/1.json
  def destroy
    @fornecedor.destroy
    respond_to do |format|
      format.html { redirect_to fornecedors_url, notice: 'Fornecedor com nome ' + @fornecedor.nome + ' foi removido com sucesso' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fornecedor
    @fornecedor = Fornecedor.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def fornecedor_params
    params.require(:fornecedor).permit(:nome, :cnpj, :telefone, :email)
  end
end
