# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Athlete.create(id: "22", name: "Danilo da Rocha Lira Araújo", cpf: "17235799496" , date_birth: "20/04/1999" , gender: "M" , profession: "Estudante" ,
            address: "Rua Ricardo Freita, 284 ", city: "Recife" , neighborhood: "Madalena" , state: "PE" ,
            cep: "60780695" , home_phone: "81946625003" , cell_phone: "81942686003",
            civil_status: "Solteiro", degree_education: "Ensino Médio Incompleto",
            modality: "Volei", position: "Ponta Esquerda", dum: "Esquerda" ,
            dlm: "Esquerda", smoker: "Não" , alcoholism: "Não", sah: "Não",
            diabetes: "Não", cardio_deseases: "Não", exercise_practice: "Sim", age: 19,
            fami_alcoholism: "Não", fami_sah: "Não", fami_diabetes: "Não", fami_cardio: "Não", others: "Nenhum")

Athlete.create(id: "2", name: "Gabriel Estevam Longuinhos", cpf: "18235599496" , date_birth: "19/03/1998" , gender: "M" , profession: "Estudante" ,
            address: "Rua Freitas, 242 ", city: "Recife" , neighborhood: "Madalena" , state: "PE" ,
            cep: "60780695" , home_phone: "81996625003" , cell_phone: "81992686003",
            civil_status: "Solteiro", degree_education: "Ensino Médio Completo",
            modality: "Volei", position: "Ponta Esquerda", dum: "Esquerda" ,
            dlm: "Esquerda", smoker: "Sim" , alcoholism: "Não", sah: "Não",
            diabetes: "Não", cardio_deseases: "Não", exercise_practice: "Sim", age: 20,
            fami_alcoholism: "Sim", fami_sah: "Não", fami_diabetes: "Não", fami_cardio: "Não", others: "Nenhum")

Athlete.create(id: "3", name: "Leonardo de Oliveira Lima", cpf: "19237299496" , date_birth: "09/06/1998" , gender: "M" , profession: "Estudante" ,
            address: "Rua das Alamedas, 185 ", city: "Recife" , neighborhood: "Madalena" , state: "PE" ,
            cep: "60780695" , home_phone: "81996625003" , cell_phone: "81992686003",
            civil_status: "Casado", degree_education: "Ensino Fundamental",
            modality: "Boxeador", position: "Ponta Esquerda", dum: "Direito" ,
            dlm: "Esquerda", smoker: "Sim" , alcoholism: "Não", sah: "Não",
            diabetes: "Não", cardio_deseases: "Não", exercise_practice: "Sim", age: 21,
            fami_alcoholism: "Sim", fami_sah: "Não", fami_diabetes: "Sim", fami_cardio: "Não", others: "Nenhum")

Anamnese.create(id: "1", main_complaint: "Dor na perna esquerda", history_complaint: "Queda praticando", nature_complaint: "Queda", is_accompanying: "Sim", user_id: "1", athlete_id: "1")

user = User.new(id: "1", name: "Danilo da Rocha Lira Araújo", cpf: "19237899496" , date_birth: "09/06/1999" , gender: "M",
address: "Rua das vitrines, 284 ", city: "Recife" , neighborhood: "Beira Rio" , state: "PE" ,
cep: "60780695" , home_phone: "81996625003" , cell_phone: "81992686003", approved: true, email: "drla@cin.ufpe.br", 
password: "0123456789", password_confirmation: "0123456789", role: "admin")

user2 = User.new(id: "2", name: "Leonardo de Oliveira Lima", cpf: "19237299496" , date_birth: "09/06/1998" , gender: "M",
address: "Rua das Alamedas, 185 ", city: "Recife" , neighborhood: "Madalena" , state: "PE" ,
cep: "60780995" , home_phone: "81996625003" , cell_phone: "81998686003", approved: false, email: "leo2@cin.ufpe.br", 
password: "0123456789", password_confirmation: "0123456789")

user3 = User.new(id: "3", name: "Gabriel Estevam Longuinhos", cpf: "19237289496" , date_birth: "19/06/1998" , gender: "M",
address: "Rua da Torre, 502", city: "Olinda" , neighborhood: "Patinhos" , state: "PE" ,
cep: "60720995" , home_phone: "81996625053" , cell_phone: "81998686003", approved: false, email: "gel@cin.ufpe.br", 
password: "0123456789", password_confirmation: "0123456789")

user.save
user2.save
user3.save