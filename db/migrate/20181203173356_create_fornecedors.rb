class CreateFornecedors < ActiveRecord::Migration[5.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.string :cnpj
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
