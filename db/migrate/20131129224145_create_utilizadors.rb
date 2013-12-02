class CreateUtilizadors < ActiveRecord::Migration
  def change
    create_table :utilizadors do |t|
      t.string :nome
      t.datetime :data_nascimento
      t.string :localidade
      t.string :email
      t.integer :telefone
      t.integer :privacidade

      t.timestamps
    end
  end
end
