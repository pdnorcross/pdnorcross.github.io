class AddAttributeToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :c_id, :integer
  end
end
