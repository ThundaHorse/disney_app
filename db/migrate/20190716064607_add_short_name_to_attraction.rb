class AddShortNameToAttraction < ActiveRecord::Migration[5.2]
  def change
    add_column :attractions, :short_name, :string
  end
end
