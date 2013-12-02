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

Utilizador.create(:id =>"2", :nome => "Tiago", :data_nascimento => DateTime.parse("15/02/1990 17:00"), :localidade => "Lisboa", :email => "sample@email.com", :telefone => "111222333", :privacidade => "111222333")
Utilizador.create(:id =>"3", :nome => "Filipe", :data_nascimento => DateTime.parse("09/01/1991 17:00"), :localidade => "Caparica", :email => "sou_um_email@mail.com", :telefone => "444555666", :privacidade =>"0")
Utilizador.create(:id =>"4", :nome => "Daniel", :data_nascimento => DateTime.parse("02/03/1989 17:00"), :localidade => "Almada", :email => "sou_outro_email@mail.com", :telefone => "777888999", :privacidade =>"0")

Noticium.create(:utilizador_id =>"2", :img =>"imagem.jpg", :titulo => "Titulo Sample", :texto => "era uma x...")
Noticium.create(:utilizador_id =>"3", :img =>"imagem.jpg", :titulo => "Titulo Sample", :texto => "era uma y...")
Noticium.create(:utilizador_id =>"2", :img =>"imagem.jpg", :titulo => "Titulo Sample", :texto => "era uma z...")

Competencium.create(:utilizador_id => "2", :nome => "RoR")
Competencium.create(:utilizador_id => "3", :nome => "Java")
Competencium.create(:utilizador_id => "3", :nome => "C++")
Competencium.create(:utilizador_id => "2", :nome => "AJAX")

Curso.create(:utilizador_id =>"2", :nome =>"LEI", :univ =>"FCT-UNL", :ano => DateTime.parse("15/02/2007 17:00"))
Curso.create(:utilizador_id =>"3", :nome =>"MIEE", :univ =>"FCT-UNL", :ano => DateTime.parse("15/02/2005 17:00"))
Curso.create(:utilizador_id =>"2", :nome =>"MEI", :univ =>"FCT-UNL", :ano => DateTime.parse("15/02/2009 17:00"))

Empresa.create(:id=>"1", :nome => "Google", :historia => "foi em 1995 que larry and....", :data_criacao => DateTime.parse("15/02/1995 17:00"), :email => "mail@gmail.com", :telefone =>"999888333", :morada =>"Av. da liberdade, nr3, 2825 caparica", :areas =>"A google pratica a sua actividade em diversas areas tais como web cenas, web coisas",  :projectos =>"Desenvolve projectos como Gmail,motor de busca", :admin_id => "2")
Empresa.create(:id=>"2", :nome => "Xerox", :historia => "foi em 1995 que larry and....", :data_criacao => DateTime.parse("15/02/1995 17:00"), :email => "mail@gmail.com", :telefone =>"999888333", :morada =>"Av. da liberdade, nr3, 2825 caparica", :areas =>"A google pratica a sua actividade em diversas areas tais como web cenas, web coisas",  :projectos =>"Desenvolve projectos como Gmail,motor de busca", :admin_id => "3")

Emprego.create(:utilizador_id => "2", :empresa_id=>"1", :cargo=>"Manda chuva", :data_entrada=> DateTime.parse("15/02/2009 17:00"), :data_saida=> DateTime.parse("15/02/2012 17:00"))
Emprego.create(:utilizador_id => "3", :empresa_id=>"2", :cargo=>"Manda chuva", :data_entrada=> DateTime.parse("15/02/2009 17:00"), :data_saida=> DateTime.parse("15/02/2012 17:00"))
Emprego.create(:utilizador_id => "4", :empresa_id=>"1", :cargo=>"Developer", :data_entrada=> DateTime.parse("15/02/2009 17:00"), :data_saida=> DateTime.parse("15/02/2012 17:00"))

Contacto.create(:utilizador_id =>"2", :utilizador2_id =>"3", :estado =>"Aceite")
Contacto.create(:utilizador_id =>"3", :utilizador2_id =>"2", :estado =>"Aceite")
Contacto.create(:utilizador_id =>"2", :utilizador2_id =>"4", :estado =>"Pendente")
Contacto.create(:utilizador_id =>"4", :utilizador2_id =>"2", :estado =>"Pendente")