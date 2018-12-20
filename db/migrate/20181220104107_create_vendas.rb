class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.references :produto, foreign_key: true
      t.references :material, foreign_key: true
      t.float :valorVenda
      t.float :valorInstalacao
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
