class MaterialsController < ApplicationController
  before_action :set_material, only: %i[show edit update destroy]

  # GET /materials
  # GET /materials.json
  def index
    @materials = Material.all
  end

  # GET /materials/1
  # GET /materials/1.json
  def show; end

  # GET /materials/new
  def new
    @material = Material.new
  end

  # GET /materials/1/edit
  def edit; end

  # POST /materials
  # POST /materials.json
  def create
    @material = Material.new(material_params)
    auxiliarCreateUpdate(@material, @material.save, 'cadastrado', :created, :new)
  end

  # PATCH/PUT /materials/1
  # PATCH/PUT /materials/1.json
  def update
    auxiliarCreateUpdate(@material, @material.update(fornecedor_params), 'atualizado', :ok, :edit)
  end

  # DELETE /materials/1
  # DELETE /materials/1.json
  def destroy
    @material.destroy
    respond_to do |format|
      format.html { redirect_to materials_url, notice: 'Material com nome ' + @material.nome + ' foi deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_material
    @material = Material.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def material_params
    params.require(:material).permit(:nome, :valor, :tipo, :cor, :origem)
  end
end
