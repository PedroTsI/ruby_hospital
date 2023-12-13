class CreateMedics < ActiveRecord::Migration[7.0]
  def change
    create_table :medics do |t|
      t.string :nome
      t.string :crm
      t.string :sexo
      t.string :especialidade
      t.string :telefone

      t.timestamps
    end
  end
end
