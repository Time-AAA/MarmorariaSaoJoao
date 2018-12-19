class CreateVendas < ActiveRecord::Migration[5.1]
  def change
    create_table :vendas do |t|
      t.float :valorVenda
      t.float :valorInstalacao
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
