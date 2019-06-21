class MultipleAttractionsToInterests < ActiveRecord::Migration[5.2]
  def change
    change_column :interests, :attraction_id, 'integer USING CAST(attraction_id as integer)'
  end
end
