class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.integer :utilizador1_id
      t.string :utilizador2_id
      t.string :estado

      t.timestamps
    end
  end
end
