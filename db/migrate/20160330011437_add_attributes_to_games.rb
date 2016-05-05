class AddAttributesToGames < ActiveRecord::Migration
  def change
    add_column :games, :name, :string
    add_column :games, :console_id, :integer
    add_column :games, :developer, :string
    add_column :games, :publisher, :string
    add_column :games, :release_year, :integer
  end
end
