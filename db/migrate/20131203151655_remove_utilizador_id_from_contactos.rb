class RemoveUtilizadorIdFromContactos < ActiveRecord::Migration
  def change
    remove_column :contactos, :utilizador1_id, :integer
    remove_column :contactos, :utilizador2_id, :String
  end
end
