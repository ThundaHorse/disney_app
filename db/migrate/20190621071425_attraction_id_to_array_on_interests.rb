class AttractionIdToArrayOnInterests < ActiveRecord::Migration[5.2]
  def change
    remove_column :interests, :attraction_id, :integer
  end 
end

