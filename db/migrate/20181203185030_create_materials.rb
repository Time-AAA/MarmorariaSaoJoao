class CreateMaterials < ActiveRecord::Migration[5.1]
  def change
    create_table :materials do |t|
      t.string :nome
      t.float :valor
      t.string :tipo
      t.string :cor
      t.string :origem

      t.timestamps
    end
  end
end
