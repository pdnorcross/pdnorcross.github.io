class AddConditonToGames < ActiveRecord::Migration
  def change
    add_column :games, :condition, :string
  end
end
