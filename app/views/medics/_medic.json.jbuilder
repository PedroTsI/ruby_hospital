json.extract! medic, :id, :nome, :crm, :sexo, :especialidade, :telefone, :created_at, :updated_at
json.url medic_url(medic, format: :json)
