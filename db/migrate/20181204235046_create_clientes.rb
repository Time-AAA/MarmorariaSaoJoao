class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :rua
      t.integer :numero
      t.string :complemento
      t.string :cep
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
