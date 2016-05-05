class AddNameToSystem < ActiveRecord::Migration
  def change
    add_column :systems, :name, :string
  end
end
