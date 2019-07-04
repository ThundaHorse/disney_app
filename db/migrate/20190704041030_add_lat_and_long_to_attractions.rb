class AddLatAndLongToAttractions < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :lat, :decimal, {:precision=>10, :scale=>6, :default => 0.1, :null => false}
    add_column :attractions, :lng, :decimal, {:precision=>10, :scale=>6, :default => 0.1, :null => false}
  end
end
