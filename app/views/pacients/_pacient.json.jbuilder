json.extract! pacient, :id, :nome, :cpf, :sexo, :email, :telefone, :data_de_nascimento, :created_at, :updated_at
json.url pacient_url(pacient, format: :json)
