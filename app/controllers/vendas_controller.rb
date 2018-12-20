class VendasController < ApplicationController
  before_action :set_venda, only: %i[show edit update destroy]
  before_action :set_produto, only: %i[edit update new]
  before_action :set_material, only: %i[edit update new]
  before_action :set_cliente, only: %i[edit update new]

  # GET /vendas
  # GET /vendas.json
  def index
    @vendas = Venda.all
  end

  # GET /vendas/1
  # GET /vendas/1.json
  def show; end

  # GET /vendas/new
  def new
    @venda = Venda.new
  end

  # GET /vendas/1/edit
  def edit; end

  # POST /vendas
  # POST /vendas.json
  def create
    @venda = Venda.new(venda_params)
    auxiliarCreateUpdate(@venda, @venda.save, 'cadastrada', :created, :new)
  end

  # PATCH/PUT /vendas/1
  # PATCH/PUT /vendas/1.json
  def update
    auxiliarCreateUpdate(@venda, @venda.update(cliente_params), 'atualizada', :ok, :edit)
  end

  # DELETE /vendas/1
  # DELETE /vendas/1.json
  def destroy
    @venda.destroy
    respond_to do |format|
      format.html { redirect_to vendas_url, notice: 'Venda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_venda
    @venda = Venda.find(params[:id])
  end

  def set_produto
    @produtos = Produto.all
  end

  def set_material
    @materials = Material.all
  end

  def set_cliente
    @clientes = Cliente.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def venda_params
    params.require(:venda).permit(:produto_id, :material_id, :valorVenda, :valorInstalacao, :cliente_id)
  end
end
