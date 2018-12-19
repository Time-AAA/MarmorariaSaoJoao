class CreateVendaProdutoMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :venda_produto_materials do |t|
      t.references :venda, foreign_key: true
      t.references :produto, foreign_key: true
      t.references :material, foreign_key: true

      t.timestamps
    end
  end
end
