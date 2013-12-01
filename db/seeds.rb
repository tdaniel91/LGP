# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Utilizador.delete_all
Noticium.delete_all

Utilizador.create(:id =>"2", :nome => "Tiago", :data_nascimento => DateTime.parse("15/02/1990 17:00"), :localidade => "Lisboa", :email => "sample@email.com", :telefone => "111222333")
Utilizador.create(:id =>"3", :nome => "Filipe", :data_nascimento => DateTime.parse("09/01/1991 17:00"), :localidade => "Caparica", :email => "sou_um_email@mail.com", :telefone => "444555666")
Utilizador.create(:id =>"4", :nome => "Daniel", :data_nascimento => DateTime.parse("02/03/1989 17:00"), :localidade => "Almada", :email => "sou_outro_email@mail.com", :telefone => "777888999")


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