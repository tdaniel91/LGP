class RemoveEmailFromUtilizadors < ActiveRecord::Migration
  def change
    remove_column :utilizadors, :email, :string
  end
end
