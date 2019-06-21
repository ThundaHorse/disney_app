class ChangeAttractionIdToInt < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :attraction_id, :integer, array: true, default: []
    add_column :interests, :attraction_id, :integer
  end
end
