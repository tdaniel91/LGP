# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Utilizador.delete_all
Noticium.delete_all

Utilizador.create(:nome => "Tiago", :data_nascimento => DateTime.parse("15/02/1990 17:00"), :localidade => "Lisboa", :email => "sample@email.com", :telefone => "111222333")
Utilizador.create(:nome => "Filipe", :data_nascimento => DateTime.parse("09/01/1991 17:00"), :localidade => "Caparica", :email => "sou_um_email@mail.com", :telefone => "444555666")

Noticium.create(:utilizador_id =>"5", :img =>"imagem.jpg", :titulo => "Titulo Sample", :texto => "era uma x...")
Noticium.create(:utilizador_id =>"6", :img =>"imagem.jpg", :titulo => "Titulo Sample", :texto => "era uma y...")
Noticium.create(:utilizador_id =>"5", :img =>"imagem.jpg", :titulo => "Titulo Sample", :texto => "era uma z...")