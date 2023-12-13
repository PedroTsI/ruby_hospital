class CreatePacients < ActiveRecord::Migration[7.0]
  def change
    create_table :pacients do |t|
      t.string :nome
      t.string :cpf
      t.string :sexo
      t.string :email
      t.string :telefone
      t.date :data_de_nascimento

      t.timestamps
    end
  end
end
