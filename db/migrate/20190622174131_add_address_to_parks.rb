class AddAddressToParks < ActiveRecord::Migration[5.2]
  def change
    add_column :parks, :address, :text
  end
end
