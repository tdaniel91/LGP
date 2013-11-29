class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :nome
      t.string :historia
      t.datetime :data_criacao
      t.string :email
      t.integer :telefone
      t.string :morada
      t.string :areas
      t.string :projectos
      t.integer :admin_id

      t.timestamps
    end
  end
end
