class AddPrivacidadeToUtilizadors < ActiveRecord::Migration
  def change
    add_column :utilizadors, :frase, :string
    add_column :utilizadors, :privacidade, :integer
  end
end
