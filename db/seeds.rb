Medic.create!(
    nome: "Pedro",
    crm: "123-KHT",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Otorrino",
)
Medic.create!(
    nome: "Dr Arnold",
    crm: "999-FUT",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Exterminar o Futuro",
)
Medic.create!(
    nome: "Dr Henry",
    crm: "TE1000%",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Psicologo",
)
Medic.create!(
    nome: "Dr Wesley Safadão",
    crm: "654-WES",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Otorrino",
)
Medic.create!(
    nome: "Dr Cariani",
    crm: "1472-PO",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Quimico",
)
Medic.create!(
    nome: "Dr Edemberg",
    crm: "123-raw",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Destruidor de Mentes",
)
Medic.create!(
    nome: "Dra Rita",
    crm: "123-tra",
    telefone: "83996662312",
    sexo: "Feminino",
    especialidade: "Otorrino",
)
Medic.create!(
    nome: "Dr Paulo",
    crm: "123-Mha",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Otorrino",
)
Medic.create!(
    nome: "Dr Jeferson",
    crm: "123-nio",
    telefone: "83996662312",
    sexo: "Masculino",
    especialidade: "Otorrino",
)
Medic.create!(
    nome: "Dra Michele",
    crm: "123-kds",
    telefone: "83996662312",
    sexo: "Feminino",
    especialidade: "Cirurgião",
)

for i in 1..10
    Medic.create!(
        nome: "Medico #{i}",
        crm: Faker::Number.binary(digits: 7),
        telefone: "83996662312",
        sexo: "Feminino",
        especialidade: "Faz tudo",
    )
end

for i in 1..100
    Pacient.create!(
        nome: "Paciente #{i}",
        cpf: Faker::CPF.numeric,
        sexo: "é fake",
        email: "paciente@gmail.com",
        telefone: "83940028922",
        data_de_nascimento: Date.new(2003,01,03),
    )
end

User.create!(
    email:"ppcantalice121@gmail.com",
    name:"Pedro Paulo Cantalice Marinho Braga",
    password: "Pedrogmr1"
)