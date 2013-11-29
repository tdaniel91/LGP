class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.integer :utilizador_id
      t.string :img
      t.string :texto
      t.string :titulo

      t.timestamps
    end
  end
end
