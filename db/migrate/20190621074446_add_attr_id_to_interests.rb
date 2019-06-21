class AddAttrIdToInterests < ActiveRecord::Migration[5.2]
  def change
    add_column :interests, :attraction_id, :integer, array: :true, default: []
  end
end
