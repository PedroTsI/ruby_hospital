class Medic < ApplicationRecord
  validates :nome, presence: true, length: { in: 3 .. 60 }
  validates :crm, presence: true, uniqueness: { case_sensitive: true }, length: { is: 7 }
  validates :telefone, presence: true, numericality: { only_integer: true }, length: { in: 10 .. 11 }
  validates :especialidade, presence: true
  validates :sexo, presence: true
end
