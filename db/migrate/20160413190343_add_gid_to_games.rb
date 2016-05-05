class AddGidToGames < ActiveRecord::Migration
  def change
    add_column :games, :gid, :integer
  end
end
