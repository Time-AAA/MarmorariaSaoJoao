class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[show edit update destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show; end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit; end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)
    auxiliarAC(@cliente.save, 'cadastrado', :created, :new)
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    auxiliarAC(@cliente.update(cliente_params), 'atualizado', :ok, :edit)
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente com nome ' + @cliente.nome + ' foi removido com sucesso' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def cliente_params
    params.require(:cliente).permit(:nome, :cpf, :telefone, :rua, :numero, :complemento, :cep, :cidade, :estado)
  end

  def auxiliarAC(metodo, acao, statusAtual, renderElse)
    respond_to do |format|
      if metodo
        format.html { redirect_to @cliente, notice: 'Cliente com nome ' + @cliente.nome + ' foi ' + acao + ' com sucesso' }
        format.json { render :show, status: statusAtual, location: @cliente }
      else
        format.html { render renderElse }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end
end
