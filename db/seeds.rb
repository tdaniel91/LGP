# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Competencium.delete_all
Contacto.delete_all
Curso.delete_all
Emprego.delete_all
Empresa.delete_all
Noticium.delete_all
Utilizador.delete_all

user = Utilizador.new
user.id ="1"
user.nome = "Tiago"
user.data_nascimento = DateTime.parse("15/02/1991 17:00")
user.localidade = "Lisboa"
user.email = "tiago@email.com"
user.password = "12345678"
user.password_confirmation = "12345678"
user.telefone = "111222333"
user.privacidade = "1"
user.frase = "Acreditar é essencial, mas ter atitude é o que faz a diferença."
user.save!

user = Utilizador.new
user.id ="2"
user.nome = "Joao"
user.data_nascimento = DateTime.parse("15/02/1990 17:00")
user.localidade = "Caparica"
user.email = "joao@email.com"
user.password = "12345678"
user.password_confirmation = "12345678"
user.telefone = "111222333"
user.privacidade = "2"
user.frase = "Fraseeee."
user.save!

user = Utilizador.new
user.id ="3"
user.nome = "FIlipe"
user.data_nascimento = DateTime.parse("15/02/1992 17:00")
user.localidade = "Caparica"
user.email = "filipe@email.com"
user.password = "12345678"
user.password_confirmation = "12345678"
user.telefone = "111222333"
user.privacidade = "3"
user.frase = "Fraseeee outra fraseeeee."
user.save!

user = Utilizador.new
user.id ="4"
user.nome = "Daniel"
user.data_nascimento = DateTime.parse("15/02/1992 17:00")
user.localidade = "Caparica"
user.email = "daniel@email.com"
user.password = "12345678"
user.password_confirmation = "12345678"
user.telefone = "111222333"
user.privacidade = "0"
user.frase = "Fraseeee outra fraseeeee."
user.save!

Noticium.create(:utilizador_id =>"1", :img =>"n1.jpg", :titulo => "Titulo Sample1", :texto => "era uma x...")
Noticium.create(:utilizador_id =>"2", :img =>"n2.jpg", :titulo => "Titulo Sample2", :texto => "era uma y...")
Noticium.create(:utilizador_id =>"1", :img =>"n3.jpg", :titulo => "Titulo Sample3", :texto => "era uma z...")

Competencium.create(:utilizador_id => "1", :nome => "RoR")
Competencium.create(:utilizador_id => "2", :nome => "Java")
Competencium.create(:utilizador_id => "2", :nome => "C++")
Competencium.create(:utilizador_id => "1", :nome => "AJAX")

Curso.create(:utilizador_id =>"1", :nome =>"LEI", :univ =>"FCT-UNL", :ano => DateTime.parse("15/02/2007 17:00"))
Curso.create(:utilizador_id =>"2", :nome =>"MIEE", :univ =>"FCT-UNL", :ano => DateTime.parse("15/02/2005 17:00"))
Curso.create(:utilizador_id =>"1", :nome =>"MEI", :univ =>"FCT-UNL", :ano => DateTime.parse("15/02/2009 17:00"))

Empresa.create(:id=>"1", :nome => "Google", :historia => "foi em 1995 que larry and....", :data_criacao => DateTime.parse("15/02/1995 17:00"), :email => "mail@gmail.com", :telefone =>"999888333", :morada =>"Av. da liberdade, nr3, 2825 caparica", :areas =>"A google pratica a sua actividade em diversas areas tais como web cenas, web coisas",  :projectos =>"Desenvolve projectos como Gmail,motor de busca", :admin_id => "2")
Empresa.create(:id=>"2", :nome => "Xerox", :historia => "foi em 1995 que larry and....", :data_criacao => DateTime.parse("15/02/1995 17:00"), :email => "mail@gmail.com", :telefone =>"999888333", :morada =>"Av. da liberdade, nr3, 2825 caparica", :areas =>"A google pratica a sua actividade em diversas areas tais como web cenas, web coisas",  :projectos =>"Desenvolve projectos como Gmail,motor de busca", :admin_id => "3")

Emprego.create(:utilizador_id => "1", :empresa_id=>"1", :cargo=>"Manda chuva", :data_entrada=> DateTime.parse("15/02/2009 17:00"), :data_saida=> DateTime.parse("15/02/2012 17:00"))
Emprego.create(:utilizador_id => "2", :empresa_id=>"2", :cargo=>"Manda chuva", :data_entrada=> DateTime.parse("15/02/2009 17:00"), :data_saida=> DateTime.parse("15/02/2012 17:00"))
Emprego.create(:utilizador_id => "3", :empresa_id=>"1", :cargo=>"Developer", :data_entrada=> DateTime.parse("15/02/2009 17:00"), :data_saida=> DateTime.parse("15/02/2012 17:00"))

Contacto.create(:utilizador_id =>"1", :utilizador2_id =>"2", :estado =>"Aceite")
Contacto.create(:utilizador_id =>"2", :utilizador2_id =>"1", :estado =>"Aceite")
Contacto.create(:utilizador_id =>"1", :utilizador2_id =>"3", :estado =>"Aceite")
Contacto.create(:utilizador_id =>"3", :utilizador2_id =>"1", :estado =>"Aceite")
Contacto.create(:utilizador_id =>"1", :utilizador2_id =>"4", :estado =>"Pendente")
Contacto.create(:utilizador_id =>"4", :utilizador2_id =>"1", :estado =>"Pendente")