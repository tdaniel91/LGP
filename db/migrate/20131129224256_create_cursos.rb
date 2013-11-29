class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.integer :utilizador_id
      t.string :nome
      t.string :univ
      t.datetime :ano

      t.timestamps
    end
  end
end
