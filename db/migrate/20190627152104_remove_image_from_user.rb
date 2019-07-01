class RemoveImageFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :test_data, :count, :integer
  end
end
