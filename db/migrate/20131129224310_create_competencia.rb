class CreateCompetencia < ActiveRecord::Migration
  def change
    create_table :competencia do |t|
      t.integer :utilizador_id
      t.string :nome

      t.timestamps
    end
  end
end
