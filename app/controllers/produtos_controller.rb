class ProdutosController < ApplicationController
  before_action :set_produto, only: %i[show edit update destroy]

  # GET /produtos
  # GET /produtos.json
  def index
    @produtos = Produto.all
  end

  # GET /produtos/1
  # GET /produtos/1.json
  def show; end

  # GET /produtos/new
  def new
    @produto = Produto.new
  end

  # GET /produtos/1/edit
  def edit; end

  # POST /produtos
  # POST /produtos.json
  def create
    @produto = Produto.new(produto_params)
    auxiliarCreateUpdate(@produto, @produto.save, 'cadastrado', :created, :new)
  end

  # PATCH/PUT /produtos/1
  # PATCH/PUT /produtos/1.json
  def update
    auxiliarCreateUpdate(@produto, @produto.update(cliente_params), 'atualizado', :ok, :edit)
  end

  # DELETE /produtos/1
  # DELETE /produtos/1.json
  def destroy
    @produto.destroy
    respond_to do |format|
      format.html { redirect_to produtos_url, notice: 'Produto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_produto
    @produto = Produto.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def produto_params
    params.require(:produto).permit(:nome)
  end
end
