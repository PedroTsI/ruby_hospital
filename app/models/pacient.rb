class Pacient < ApplicationRecord
  validates :nome, presence: true, length: { in: 3 .. 60 }
  validates :cpf, presence: true, uniqueness: { case_sensitive: true }, length: { is: 11 }, numericality: {only_integer: true}
  validates :telefone, presence: true, numericality: { only_integer: true }, length: { in: 10 .. 11 }
  validates :sexo, presence: true
  validates :data_de_nascimento, presence: true
  validates :email, presence: true
end
