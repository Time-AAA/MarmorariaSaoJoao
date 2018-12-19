class VendaProdutoMaterialsController < ApplicationController
  before_action :set_venda_produto_material, only: [:show, :edit, :update, :destroy]

  # GET /venda_produto_materials
  # GET /venda_produto_materials.json
  def index
    @venda_produto_materials = VendaProdutoMaterial.all
  end

  # GET /venda_produto_materials/1
  # GET /venda_produto_materials/1.json
  def show
  end

  # GET /venda_produto_materials/new
  def new
    @venda_produto_material = VendaProdutoMaterial.new
  end

  # GET /venda_produto_materials/1/edit
  def edit
  end

  # POST /venda_produto_materials
  # POST /venda_produto_materials.json
  def create
    @venda_produto_material = VendaProdutoMaterial.new(venda_produto_material_params)

    respond_to do |format|
      if @venda_produto_material.save
        format.html { redirect_to @venda_produto_material, notice: 'Venda produto material was successfully created.' }
        format.json { render :show, status: :created, location: @venda_produto_material }
      else
        format.html { render :new }
        format.json { render json: @venda_produto_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /venda_produto_materials/1
  # PATCH/PUT /venda_produto_materials/1.json
  def update
    respond_to do |format|
      if @venda_produto_material.update(venda_produto_material_params)
        format.html { redirect_to @venda_produto_material, notice: 'Venda produto material was successfully updated.' }
        format.json { render :show, status: :ok, location: @venda_produto_material }
      else
        format.html { render :edit }
        format.json { render json: @venda_produto_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /venda_produto_materials/1
  # DELETE /venda_produto_materials/1.json
  def destroy
    @venda_produto_material.destroy
    respond_to do |format|
      format.html { redirect_to venda_produto_materials_url, notice: 'Venda produto material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venda_produto_material
      @venda_produto_material = VendaProdutoMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venda_produto_material_params
      params.require(:venda_produto_material).permit(:venda_id, :produto_id, :material_id)
    end
end
