class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.integer :utilizador_id
      t.integer :utilizador2_id
      t.string :estado

      t.timestamps
    end
  end
end
