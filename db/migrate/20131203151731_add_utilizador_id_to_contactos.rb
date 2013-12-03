class AddUtilizadorIdToContactos < ActiveRecord::Migration
  def change
    add_column :contactos, :utilizador_id, :integer
    add_column :contactos, :utilizador2_id, :integer
  end
end
