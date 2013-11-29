class CreateEmpregos < ActiveRecord::Migration
  def change
    create_table :empregos do |t|
      t.integer :utilizador_id
      t.integer :empresa_id
      t.string :cargo
      t.datetime :data_entrada
      t.datetime :data_saida

      t.timestamps
    end
  end
end
