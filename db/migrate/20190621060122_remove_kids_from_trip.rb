class RemoveKidsFromTrip < ActiveRecord::Migration[5.2]
  def change
    remove_column :trips, :kids_present, :boolean
  end
end
